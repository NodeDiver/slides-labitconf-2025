#!/bin/bash
# Script de validación para verificar que todo está listo antes del evento
# Ejecutar: ./scripts/validate_project.sh

set -e

echo "🔍 Validando proyecto Slides NWC LABITCONF..."
echo ""

# Colores
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m'

ERRORS=0
WARNINGS=0
SUCCESS=0

# Función para checks
check() {
    if [ $1 -eq 0 ]; then
        echo -e "${GREEN}✅ $2${NC}"
        ((SUCCESS++))
    else
        echo -e "${RED}❌ $2${NC}"
        ((ERRORS++))
    fi
}

warn() {
    echo -e "${YELLOW}⚠️  $1${NC}"
    ((WARNINGS++))
}

info() {
    echo -e "${BLUE}ℹ️  $1${NC}"
}

section() {
    echo ""
    echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
    echo -e "${BLUE}$1${NC}"
    echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
}

# ============================================
# VALIDACIÓN 1: Archivos críticos
# ============================================
section "1. ARCHIVOS CRÍTICOS"

[ -f "Template_SPEAKERS_2025.pptx" ]
check $? "Template oficial existe"

[ -f "output/slides-nwc-labitconf.pptx" ]
check $? "PPTX generado existe"

[ -f "content/slides-nwc.md" ]
check $? "Contenido Markdown existe"

[ -f "content/sources.md" ]
check $? "Referencias documentadas"

# ============================================
# VALIDACIÓN 2: Assets
# ============================================
section "2. ASSETS"

[ -f "assets/qr-nip47.png" ]
check $? "QR NIP-47 generado"

[ -f "assets/qr-alby.png" ]
check $? "QR Alby generado"

[ -f "assets/qr-nostr.png" ]
check $? "QR Nostr generado"

if [ -f "assets/architecture-nwc-mcp.png" ]; then
    check 0 "Diagrama arquitectura NWC+MCP (PNG)"
else
    warn "Diagrama arquitectura NWC+MCP NO convertido a PNG (pendiente)"
fi

if [ -f "assets/nwc-simple-flow.png" ]; then
    check 0 "Diagrama flujo NWC (PNG)"
else
    warn "Diagrama flujo NWC NO convertido a PNG (pendiente)"
fi

# ============================================
# VALIDACIÓN 3: Peso del PPTX
# ============================================
section "3. PESO DEL PPTX"

if [ -f "output/slides-nwc-labitconf.pptx" ]; then
    SIZE=$(stat -c%s output/slides-nwc-labitconf.pptx 2>/dev/null || stat -f%z output/slides-nwc-labitconf.pptx)
    SIZE_MB=$(echo "scale=2; $SIZE / 1048576" | bc)

    info "Tamaño actual: ${SIZE_MB} MB"

    if [ $SIZE -lt 15728640 ]; then
        check 0 "Peso <15MB (límite LABITCONF)"
    else
        check 1 "Peso EXCEDE 15MB - OPTIMIZAR IMÁGENES"
    fi
fi

# ============================================
# VALIDACIÓN 4: Backups
# ============================================
section "4. BACKUPS"

if [ -f "output/slides-nwc-labitconf.pdf" ]; then
    check 0 "PDF backup exportado"
else
    warn "PDF backup NO exportado (pendiente manual)"
fi

# ============================================
# VALIDACIÓN 5: Documentación
# ============================================
section "5. DOCUMENTACIÓN"

[ -f "README.md" ]
check $? "README principal"

[ -f "PLAN-PASO-A-PASO.md" ]
check $? "Plan paso a paso"

[ -f "CHECKLIST-labitconf.md" ]
check $? "Checklist pre-evento"

[ -f "MEJORAS.md" ]
check $? "Documento de mejoras"

[ -f "docs/TIMING-SLIDES.md" ]
check $? "Guía de timing"

# ============================================
# VALIDACIÓN 6: Scripts
# ============================================
section "6. SCRIPTS"

[ -x "scripts/build.sh" ]
check $? "Script de build ejecutable"

[ -f "scripts/md_to_pptx.py" ]
check $? "Conversor MD→PPTX"

[ -f "scripts/generate_qr.py" ]
check $? "Generador de QR"

[ -x "scripts/complete_setup.sh" ]
check $? "Script de setup completo"

# ============================================
# VALIDACIÓN 7: Contenido (grep rápido)
# ============================================
section "7. CONTENIDO"

if grep -q "\[PENDIENTE\]" content/slides-nwc.md; then
    warn "Hay marcadores [PENDIENTE] en slides-nwc.md"
else
    check 0 "Sin marcadores [PENDIENTE] en contenido"
fi

if grep -q "LaWallet" content/slides-nwc.md; then
    check 0 "Proyectos locales mencionados (LaWallet)"
else
    check 1 "Proyectos locales NO mencionados"
fi

if grep -q "Prism" content/slides-nwc.md; then
    check 0 "Proyectos internacionales mencionados (Prism)"
else
    check 1 "Proyectos internacionales NO mencionados"
fi

# ============================================
# VALIDACIÓN 8: Dependencias Python
# ============================================
section "8. DEPENDENCIAS"

if [ -d "venv" ]; then
    check 0 "Entorno virtual existe"

    source venv/bin/activate 2>/dev/null || true

    if python3 -c "import pptx" 2>/dev/null; then
        check 0 "python-pptx instalado"
    else
        check 1 "python-pptx NO instalado"
    fi

    if python3 -c "import qrcode" 2>/dev/null; then
        check 0 "qrcode instalado"
    else
        check 1 "qrcode NO instalado"
    fi
else
    warn "Entorno virtual no existe (ejecutar: python3 -m venv venv)"
fi

# ============================================
# RESUMEN FINAL
# ============================================
section "RESUMEN FINAL"

echo ""
echo -e "${GREEN}Exitosos: $SUCCESS${NC}"
echo -e "${YELLOW}Warnings: $WARNINGS${NC}"
echo -e "${RED}Errores: $ERRORS${NC}"
echo ""

if [ $ERRORS -eq 0 ] && [ $WARNINGS -eq 0 ]; then
    echo -e "${GREEN}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
    echo -e "${GREEN}✨ ¡PROYECTO COMPLETAMENTE LISTO! ✨${NC}"
    echo -e "${GREEN}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
    echo ""
    echo "Todo está listo para LABITCONF 2025."
    echo "Revisa CHECKLIST-labitconf.md para pasos finales."
    exit 0
elif [ $ERRORS -eq 0 ]; then
    echo -e "${YELLOW}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
    echo -e "${YELLOW}⚠️  PROYECTO CASI LISTO (con warnings)${NC}"
    echo -e "${YELLOW}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
    echo ""
    echo "Hay $WARNINGS warnings - revisa arriba para detalles."
    echo "Consulta PLAN-PASO-A-PASO.md para completar pasos pendientes."
    exit 0
else
    echo -e "${RED}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
    echo -e "${RED}❌ PROYECTO INCOMPLETO${NC}"
    echo -e "${RED}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
    echo ""
    echo "Hay $ERRORS errores que deben corregirse."
    echo "Revisa los mensajes arriba y sigue PLAN-PASO-A-PASO.md"
    exit 1
fi
