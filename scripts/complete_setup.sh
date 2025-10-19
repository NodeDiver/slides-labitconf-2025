#!/bin/bash
# Script completo para ejecutar todos los pasos críticos automáticamente
# Ejecutar: ./scripts/complete_setup.sh

set -e  # Exit on error

echo "🚀 Iniciando setup completo para LABITCONF 2025..."
echo ""

# Colores para output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

# Función para mostrar pasos
step() {
    echo ""
    echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
    echo -e "${GREEN}▶ $1${NC}"
    echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
    echo ""
}

# Función para warnings
warning() {
    echo -e "${YELLOW}⚠️  $1${NC}"
}

# Función para errores
error() {
    echo -e "${RED}❌ $1${NC}"
}

# Función para éxito
success() {
    echo -e "${GREEN}✅ $1${NC}"
}

# ============================================
# PASO 1: Verificar dependencias
# ============================================
step "PASO 1: Verificando dependencias"

# Python
if ! command -v python3 &> /dev/null; then
    error "Python 3 no está instalado"
    exit 1
fi
success "Python 3 encontrado"

# Activar venv
if [ ! -d "venv" ]; then
    warning "Creando entorno virtual..."
    python3 -m venv venv
fi

source venv/bin/activate
success "Entorno virtual activado"

# Instalar/verificar paquetes Python
pip install -q python-pptx pillow qrcode
success "Paquetes Python instalados"

# ============================================
# PASO 2: Generar QR codes (si no existen)
# ============================================
step "PASO 2: Generando QR codes"

if [ -f "assets/qr-nip47.png" ]; then
    success "QR codes ya existen"
else
    python scripts/generate_qr.py
    success "QR codes generados"
fi

# ============================================
# PASO 3: Convertir diagramas Mermaid a PNG
# ============================================
step "PASO 3: Convirtiendo diagramas Mermaid a PNG"

# Verificar si mmdc está disponible
if command -v mmdc &> /dev/null; then
    success "mermaid-cli (mmdc) encontrado"
    ./scripts/convert_mermaid_to_png.sh || warning "Error convirtiendo diagramas. Continuando..."
elif command -v npx &> /dev/null; then
    success "npx encontrado, usando para mermaid-cli"

    npx -y @mermaid-js/mermaid-cli mmdc -i assets/architecture-nwc-mcp.mmd -o assets/architecture-nwc-mcp.png -b transparent -w 1920 -H 1080 || warning "Error convirtiendo diagrama 1"

    npx -y @mermaid-js/mermaid-cli mmdc -i assets/nwc-simple-flow.mmd -o assets/nwc-simple-flow.png -b transparent -w 1920 -H 1080 || warning "Error convirtiendo diagrama 2"

    if [ -f "assets/architecture-nwc-mcp.png" ] && [ -f "assets/nwc-simple-flow.png" ]; then
        success "Diagramas convertidos correctamente"
    fi
else
    warning "ni mmdc ni npx encontrados"
    warning "Diagramas NO convertidos - tendrás que hacerlo manualmente"
    echo "  Opción 1: Instalar mermaid-cli: npm install -g @mermaid-js/mermaid-cli"
    echo "  Opción 2: Usar https://mermaid.live/ y descargar PNG manualmente"
fi

# ============================================
# PASO 4: Generar PPTX
# ============================================
step "PASO 4: Generando PPTX desde Markdown"

python scripts/md_to_pptx.py

if [ -f "output/slides-nwc-labitconf.pptx" ]; then
    SIZE=$(stat -c%s output/slides-nwc-labitconf.pptx 2>/dev/null || stat -f%z output/slides-nwc-labitconf.pptx)
    SIZE_MB=$(echo "scale=2; $SIZE / 1048576" | bc)

    success "PPTX generado: output/slides-nwc-labitconf.pptx"
    echo "   Tamaño: ${SIZE_MB} MB"

    # Verificar límite de 15MB
    if [ $SIZE -gt 15728640 ]; then
        error "⚠️  PPTX excede 15MB! Necesitas optimizar imágenes"
    else
        success "Tamaño OK (<15MB)"
    fi
else
    error "Error generando PPTX"
    exit 1
fi

# ============================================
# PASO 5: Instrucciones manuales
# ============================================
step "PASO 5: Pasos manuales pendientes"

echo ""
echo "Los siguientes pasos DEBEN hacerse manualmente:"
echo ""
echo "1. 📝 Insertar diagramas en PPTX:"
echo "   - Abrir output/slides-nwc-labitconf.pptx"
echo "   - Slide 11: Insertar assets/architecture-nwc-mcp.png"
echo "   - Slide 10: Insertar assets/nwc-simple-flow.png"
echo ""
echo "2. 💾 Exportar PDF backup:"
echo "   - Abrir PPTX en PowerPoint/LibreOffice"
echo "   - File > Export as PDF"
echo "   - Guardar como output/slides-nwc-labitconf.pdf"
echo ""
echo "3. 🎯 Ensayar presentación:"
echo "   - Cronometrar (objetivo: 15 minutos)"
echo "   - Ajustar timing según PLAN-PASO-A-PASO.md"
echo "   - Practicar al menos 3 veces"
echo ""
echo "4. 📂 Crear backups:"
echo "   - USB: Copiar PPTX + PDF"
echo "   - Cloud: Subir a Drive/Dropbox"
echo "   - Email: Enviarte a ti mismo"
echo ""
echo "5. ✅ Validar en proyector:"
echo "   - Probar en pantalla 1920x1080"
echo "   - Verificar legibilidad y contraste"
echo ""

# ============================================
# PASO 6: Resumen final
# ============================================
step "RESUMEN FINAL"

success "Setup automático completado ✨"
echo ""
echo "Archivos generados:"
echo "  ✅ output/slides-nwc-labitconf.pptx"
echo "  ✅ assets/qr-*.png (3 archivos)"

if [ -f "assets/architecture-nwc-mcp.png" ]; then
    echo "  ✅ assets/architecture-nwc-mcp.png"
fi

if [ -f "assets/nwc-simple-flow.png" ]; then
    echo "  ✅ assets/nwc-simple-flow.png"
fi

echo ""
echo "Próximos pasos:"
echo "  1. Revisar PLAN-PASO-A-PASO.md para pasos manuales"
echo "  2. Seguir CHECKLIST-labitconf.md para validación completa"
echo ""
echo "Tiempo estimado para pasos manuales: 4-6 horas"
echo ""

success "¡Buena suerte en LABITCONF 2025! 🚀"
