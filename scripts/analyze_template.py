#!/usr/bin/env python3
"""
Analiza el template PPTX de LABITCONF para extraer información de layouts,
colores, fuentes y generar documentación útil para crear slides.
"""

import xml.etree.ElementTree as ET
import os
from pathlib import Path

# Namespaces comunes en PPTX
NS = {
    'p': 'http://schemas.openxmlformats.org/presentationml/2006/main',
    'a': 'http://schemas.openxmlformats.org/drawingml/2006/main',
    'r': 'http://schemas.openxmlformats.org/officeDocument/2006/relationships'
}

def extract_layout_info(layout_path):
    """Extrae información de un layout XML"""
    tree = ET.parse(layout_path)
    root = tree.getroot()

    # Obtener nombre del layout
    cSld = root.find('.//p:cSld', NS)
    name = cSld.get('name') if cSld is not None else 'Sin nombre'

    # Contar placeholders
    placeholders = root.findall('.//p:ph', NS)
    ph_types = []
    for ph in placeholders:
        ph_type = ph.get('type', 'content')
        ph_types.append(ph_type)

    # Detectar si tiene imagen de fondo
    has_bg_image = root.find('.//p:bg//a:blip', NS) is not None

    return {
        'name': name,
        'placeholders': len(placeholders),
        'ph_types': ph_types,
        'has_bg_image': has_bg_image
    }

def analyze_theme(theme_path):
    """Extrae colores y fuentes del tema"""
    tree = ET.parse(theme_path)
    root = tree.getroot()

    # Extraer colores
    colors = {}
    color_scheme = root.find('.//a:clrScheme', NS)
    if color_scheme is not None:
        for color_element in color_scheme:
            tag = color_element.tag.split('}')[1] if '}' in color_element.tag else color_element.tag
            srgb = color_element.find('.//a:srgbClr', NS)
            if srgb is not None:
                colors[tag] = '#' + srgb.get('val')

    # Extraer fuentes
    fonts = {}
    font_scheme = root.find('.//a:fontScheme', NS)
    if font_scheme is not None:
        major_font = font_scheme.find('.//a:majorFont/a:latin', NS)
        minor_font = font_scheme.find('.//a:minorFont/a:latin', NS)
        if major_font is not None:
            fonts['major'] = major_font.get('typeface')
        if minor_font is not None:
            fonts['minor'] = minor_font.get('typeface')

    return {'colors': colors, 'fonts': fonts}

def main():
    base_dir = Path('/home/motoko/dev/slides-labitconf-2025/docs/template_extracted/ppt')

    print("# Análisis del Template LABITCONF 2025\n")

    # Analizar tema
    theme_file = base_dir / 'theme' / 'theme1.xml'
    if theme_file.exists():
        theme_info = analyze_theme(theme_file)
        print("## Colores del Tema\n")
        for name, color in theme_info['colors'].items():
            print(f"- **{name}**: {color}")
        print(f"\n## Fuentes\n")
        for font_type, font_name in theme_info['fonts'].items():
            print(f"- **{font_type}**: {font_name}")
        print()

    # Analizar layouts
    layouts_dir = base_dir / 'slideLayouts'
    if layouts_dir.exists():
        print("## Layouts Disponibles\n")
        layout_files = sorted(layouts_dir.glob('slideLayout*.xml'))

        for idx, layout_file in enumerate(layout_files, 1):
            info = extract_layout_info(layout_file)
            print(f"### Layout {idx}: {info['name']}")
            print(f"- **Placeholders**: {info['placeholders']}")
            print(f"- **Tipos**: {', '.join(info['ph_types']) if info['ph_types'] else 'Ninguno'}")
            print(f"- **Fondo con imagen**: {'Sí' if info['has_bg_image'] else 'No'}")
            print()

    # Contar slides
    slides_dir = base_dir / 'slides'
    if slides_dir.exists():
        slide_count = len(list(slides_dir.glob('slide*.xml')))
        print(f"## Total de Slides en Template: {slide_count}\n")

if __name__ == '__main__':
    main()
