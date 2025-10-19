#!/bin/bash
# Script de build para generar las slides NWC para LABITCONF

set -e

echo "🚀 Iniciando build de slides NWC para LABITCONF..."

# Verificar que exista el template
if [ ! -f "Template_SPEAKERS_2025.pptx" ]; then
    echo "❌ Error: No se encontró Template_SPEAKERS_2025.pptx"
    exit 1
fi

# Verificar que exista el contenido
if [ ! -f "content/slides-nwc.md" ]; then
    echo "❌ Error: No se encontró content/slides-nwc.md"
    exit 1
fi

# Activar entorno virtual
if [ ! -d "venv" ]; then
    echo "📦 Creando entorno virtual..."
    python3 -m venv venv
    source venv/bin/activate
    pip install python-pptx pillow qrcode
else
    source venv/bin/activate
fi

# Generar PPTX
echo "📄 Generando PPTX..."
python scripts/md_to_pptx.py

# Verificar resultado
if [ -f "output/slides-nwc-labitconf.pptx" ]; then
    echo "✅ Build completado exitosamente"
    echo "📁 Archivo generado: output/slides-nwc-labitconf.pptx"
    ls -lh output/slides-nwc-labitconf.pptx
else
    echo "❌ Error: No se generó el archivo PPTX"
    exit 1
fi
