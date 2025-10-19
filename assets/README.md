# Assets - Diagramas y Recursos

## Diagramas Mermaid

Los siguientes diagramas están disponibles en formato Mermaid (.mmd):

- `architecture-nwc-mcp.mmd`: Arquitectura completa de NWC + MCP
- `nwc-simple-flow.mmd`: Flujo simplificado de NWC

### Convertir a PNG

Para convertir los diagramas a PNG y usarlos en las slides:

#### Opción 1: mermaid-cli (recomendado)

```bash
# Instalar mermaid-cli globalmente
npm install -g @mermaid-js/mermaid-cli

# Convertir todos los diagramas
./scripts/convert_mermaid_to_png.sh
```

#### Opción 2: npx (sin instalación global)

```bash
# Convertir con npx
npx -y @mermaid-js/mermaid-cli mmdc -i assets/architecture-nwc-mcp.mmd -o assets/architecture-nwc-mcp.png -b transparent -w 1920

npx -y @mermaid-js/mermaid-cli mmdc -i assets/nwc-simple-flow.mmd -o assets/nwc-simple-flow.png -b transparent -w 1920
```

#### Opción 3: Online (para pruebas)

1. Abre https://mermaid.live/
2. Pega el contenido del archivo .mmd
3. Descarga como PNG
4. Guarda en la carpeta `assets/`

## QR Codes

Los QR codes ya generados:
- `qr-nip47.png`: Enlace a documentación NIP-47
- `qr-alby.png`: Enlace a Alby
- `qr-nostr.png`: Enlace a Nostr Protocol

Para generar QR codes adicionales, edita `scripts/generate_qr.py` y ejecuta:

```bash
source venv/bin/activate
python scripts/generate_qr.py
```

## Uso en PPTX

Una vez convertidos los diagramas a PNG:

1. Abre `output/slides-nwc-labitconf.pptx` en PowerPoint/LibreOffice
2. Ve a la slide correspondiente (ej: "IA + MCP", "Cómo funciona")
3. Inserta > Imagen > Selecciona el PNG del diagrama
4. Ajusta tamaño y posición según el layout
5. Guarda el PPTX

## Optimización de Imágenes

Si las imágenes son muy pesadas (>1MB cada una):

```bash
# Comprimir PNGs con pngquant
pngquant --quality=65-80 assets/*.png --ext -compressed.png --force

# O con ImageMagick
convert assets/diagram.png -quality 85 -resize 1920x assets/diagram-optimized.png
```

Asegúrate de que el PPTX final sea <15MB.
