#!/bin/bash
# Script para convertir diagramas Mermaid a PNG
# Requiere: mmdc (mermaid-cli) instalado globalmente o via npx

set -e

ASSETS_DIR="assets"

echo "🎨 Convirtiendo diagramas Mermaid a PNG..."

# Verificar si mmdc está disponible
if command -v mmdc &> /dev/null; then
    MMDC_CMD="mmdc"
    echo "✅ mmdc encontrado"
elif command -v npx &> /dev/null; then
    MMDC_CMD="npx -y @mermaid-js/mermaid-cli mmdc"
    echo "📦 Usando npx para ejecutar mmdc"
else
    echo "❌ Error: ni mmdc ni npx están instalados"
    echo "Instala con: npm install -g @mermaid-js/mermaid-cli"
    echo "O asegúrate de tener npx disponible"
    exit 1
fi

# Convertir diagramas
for mmd_file in "$ASSETS_DIR"/*.mmd; do
    if [ -f "$mmd_file" ]; then
        filename=$(basename "$mmd_file" .mmd)
        output_file="$ASSETS_DIR/${filename}.png"

        echo "🔄 Convirtiendo: $mmd_file → $output_file"
        $MMDC_CMD -i "$mmd_file" -o "$output_file" -b transparent -w 1920 -H 1080

        if [ -f "$output_file" ]; then
            echo "✅ Generado: $output_file"
            ls -lh "$output_file"
        else
            echo "❌ Error al generar $output_file"
        fi
    fi
done

echo ""
echo "✅ Diagramas convertidos. Revisa la carpeta assets/"
