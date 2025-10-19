# 📋 Plan Paso a Paso - Completar Proyecto Slides NWC LABITCONF

**Fecha de creación**: 2025-10-18
**Objetivo**: Guía completa para finalizar las slides antes del evento
**Tiempo total estimado**: 4-6 horas (críticos) + 3-5 horas (opcionales importantes) + 5-8 horas (nice-to-have)

---

## 🚨 Fase 1: PASOS CRÍTICOS (OBLIGATORIOS)

Estos pasos **DEBEN** completarse antes del evento. Tiempo estimado: **4-6 horas**.

---

### ✅ Paso 1: Convertir Diagramas Mermaid a PNG

**Objetivo**: Generar imágenes PNG de los diagramas para insertar en las slides.

**Tiempo estimado**: 20-30 minutos

**Comandos**:
```bash
# Opción A: Con mermaid-cli instalado globalmente
npm install -g @mermaid-js/mermaid-cli
./scripts/convert_mermaid_to_png.sh

# Opción B: Con npx (sin instalación global)
npx -y @mermaid-js/mermaid-cli mmdc -i assets/architecture-nwc-mcp.mmd -o assets/architecture-nwc-mcp.png -b transparent -w 1920 -H 1080

npx -y @mermaid-js/mermaid-cli mmdc -i assets/nwc-simple-flow.mmd -o assets/nwc-simple-flow.png -b transparent -w 1920 -H 1080

# Opción C: Online (si las opciones A y B fallan)
# 1. Ir a https://mermaid.live/
# 2. Copiar contenido de assets/architecture-nwc-mcp.mmd
# 3. Pegar en el editor
# 4. Descargar como PNG
# 5. Guardar en assets/ con el nombre correcto
```

**Archivos generados**:
- `assets/architecture-nwc-mcp.png`
- `assets/nwc-simple-flow.png`

**Verificación**:
```bash
ls -lh assets/*.png
# Deberías ver los 2 nuevos PNGs + los 3 QR codes
```

**⚠️ Consideraciones**:
- Los PNGs deben ser transparentes (fondo)
- Resolución mínima: 1920x1080
- Peso individual: <2MB cada uno

---

### ✅ Paso 2: Insertar Diagramas en PPTX

**Objetivo**: Agregar las imágenes de los diagramas en las slides correspondientes.

**Tiempo estimado**: 15-20 minutos

**Procedimiento**:
1. Abrir `output/slides-nwc-labitconf.pptx` en PowerPoint o LibreOffice Impress
2. **Slide 11 (IA + MCP)**:
   - Insertar > Imagen > `assets/architecture-nwc-mcp.png`
   - Ajustar tamaño para que no cubra el título ni los bullets
   - Posicionar en el área de contenido (centrado o a la derecha)
3. **Slide 10 o crear slide nueva (Cómo funciona NWC)**:
   - Insertar > Imagen > `assets/nwc-simple-flow.png`
   - Ajustar tamaño y posición
4. Guardar el PPTX (sobrescribir el existente)

**Verificación**:
- Abrir el PPTX y navegar a las slides con diagramas
- Verificar que se vean nítidos y no pixelados
- Verificar peso del PPTX: `ls -lh output/slides-nwc-labitconf.pptx`
- Debe seguir siendo <15MB

**⚠️ Consideraciones**:
- No usar "Insertar como fondo" - insertar como imagen normal
- Mantener proporciones originales (no distorsionar)
- Si el PPTX excede 15MB después de insertar, comprimir las imágenes

---

### ✅ Paso 3: Exportar PDF Backup

**Objetivo**: Crear un PDF de respaldo en caso de problemas técnicos.

**Tiempo estimado**: 5-10 minutos

**Procedimiento**:

**En PowerPoint**:
1. Abrir `output/slides-nwc-labitconf.pptx`
2. File > Export > Create PDF/XPS
3. Guardar como `output/slides-nwc-labitconf.pdf`
4. Opciones recomendadas:
   - Calidad: Alta (para impresión)
   - Incluir: Todas las slides
   - No incluir notas del orador (opcional)

**En LibreOffice Impress**:
1. Abrir `output/slides-nwc-labitconf.pptx`
2. File > Export as PDF
3. Opciones:
   - Rango: Todas
   - Calidad de imágenes: 90%
   - Guardar como `output/slides-nwc-labitconf.pdf`

**Verificación**:
```bash
ls -lh output/slides-nwc-labitconf.pdf
# Verificar que existe y tiene tamaño razonable (1-5 MB)

# Abrir PDF para verificar
xdg-open output/slides-nwc-labitconf.pdf
```

**⚠️ Consideraciones**:
- El PDF debe ser legible (no pixelado)
- Verificar que todos los emojis se vean correctamente
- Llevar este PDF en USB como backup absoluto

---

### ✅ Paso 4: Validar PPTX en Diferentes Plataformas

**Objetivo**: Asegurar compatibilidad y buena renderización.

**Tiempo estimado**: 20-30 minutos

**Checklist de validación**:

**A. En PowerPoint (Windows/macOS)**:
- [ ] Abrir sin errores
- [ ] Fuentes renderizadas correctamente (Arial)
- [ ] Colores del template visibles
- [ ] Diagramas visibles y nítidos
- [ ] Emojis en títulos visibles
- [ ] Transiciones funcionan (si las agregaste)
- [ ] Notas del orador visibles en vista de presentador

**B. En LibreOffice Impress (Linux/alternativa)**:
- [ ] Abrir sin errores o warnings
- [ ] Layouts se mantienen
- [ ] Sin textos cortados o overflow
- [ ] Colores consistentes

**C. En Proyector (simulado o real)**:
- [ ] Conectar laptop a monitor externo o TV (1920x1080)
- [ ] Modo presentación (F5 en PowerPoint, Ctrl+F5 en LibreOffice)
- [ ] Verificar legibilidad desde 3-4 metros de distancia
- [ ] Verificar contraste con brillo bajo
- [ ] Verificar que no haya texto cortado en bordes

**Comandos de verificación**:
```bash
# Verificar peso final
ls -lh output/slides-nwc-labitconf.pptx

# Verificar que no exceda 15MB
du -h output/slides-nwc-labitconf.pptx
```

**⚠️ Consideraciones**:
- Si hay problemas de fuentes, verificar que Arial esté instalado
- Si hay overflow, reducir texto o tamaño de fuente en esa slide
- Tomar nota de cualquier problema para corregir

---

### ✅ Paso 5: Ensayar Timing y Ajustar Speaker Notes

**Objetivo**: Practicar la presentación y verificar que cabe en 15 minutos.

**Tiempo estimado**: 1-2 horas (múltiples ensayos)

**Procedimiento**:

**Ensayo 1: Con notas completas**
1. Abrir PPTX en modo presentación
2. Activar vista de presentador (ver notas)
3. Cronometrar desde inicio hasta final
4. Anotar tiempo por slide

**Plantilla de timing** (crear archivo `docs/TIMING-SLIDES.md`):
```markdown
# Timing de Slides - Ensayo [Número]

**Fecha**: [fecha]
**Duración total**: XX min XX seg
**Objetivo**: 15 minutos

| Slide | Título | Tiempo Real | Tiempo Objetivo | Notas |
|-------|--------|-------------|-----------------|-------|
| 1 | Portada | 30s | 30s | ✅ OK |
| 2 | El problema | 1m 20s | 1m 30s | ✅ OK |
| 3 | Por qué NWC ahora | 1m 10s | 1m | ⚠️ Recortar 10s |
| ... | ... | ... | ... | ... |
| **TOTAL** | | **16m 30s** | **15m** | ⚠️ Recortar 1m 30s |
```

**Ensayo 2: Ajustado**
- Aplicar recortes identificados en ensayo 1
- Practicar transiciones entre slides
- Cronometrar nuevamente

**Ensayo 3: Sin notas (solo slides)**
- Practicar sin leer notas
- Verificar fluidez
- Cronometrar

**Ampliar Speaker Notes**:
Para cada slide, agregar en las notas:
```
TIMING TARGET: 1m 30s

BEATS CLAVE:
- Punto 1 (20s)
- Punto 2 (30s)
- Transición a siguiente slide (10s)

PREGUNTAS ANTICIPADAS:
- ¿Es custodial? → No, NWC es no-custodial

ANÉCDOTA/EJEMPLO:
- [Si aplica] Caso real de uso
```

**Herramientas útiles**:
```bash
# Timer en terminal (opcional)
gnome-clocks  # En Linux
# O usar timer en smartphone
```

**⚠️ Consideraciones**:
- Si excedes 15 min por >2 min, considera:
  - Eliminar 1-2 bullets de slides densas
  - Fusionar 2 slides en 1
  - Hablar más rápido (no recomendado)
- Practicar al menos 3 veces
- Ensayar delante de alguien si es posible

---

### ✅ Paso 6: Crear Backups y Copias de Seguridad

**Objetivo**: Asegurar que no pierdas las slides por ningún motivo.

**Tiempo estimado**: 10-15 minutos

**Checklist de backups**:

**A. USB Backup**:
```bash
# Copiar archivos esenciales a USB
cp output/slides-nwc-labitconf.pptx /media/usb/
cp output/slides-nwc-labitconf.pdf /media/usb/

# Verificar
ls -lh /media/usb/
```

**B. Cloud Backup**:
```bash
# Opción 1: Google Drive (con rclone o gdrive)
rclone copy output/slides-nwc-labitconf.pptx gdrive:LABITCONF/

# Opción 2: Dropbox
# Copiar manualmente a carpeta de Dropbox

# Opción 3: GitHub (si ya subiste el repo)
git add output/slides-nwc-labitconf.pptx output/slides-nwc-labitconf.pdf
git commit -m "Add final PPTX and PDF for LABITCONF"
git push origin main
```

**C. Email Backup (a ti mismo)**:
- Enviarte el PPTX y PDF por email
- Así puedes descargarlos desde cualquier dispositivo

**D. Laptop Backup**:
```bash
# Copiar a carpeta de documentos personal
cp output/slides-nwc-labitconf.{pptx,pdf} ~/Documents/LABITCONF-BACKUP/
```

**Verificación**:
- [ ] USB con PPTX + PDF
- [ ] Cloud (Drive/Dropbox/GitHub) con PPTX + PDF
- [ ] Email enviado con archivos adjuntos
- [ ] Copia en otra carpeta del laptop

**⚠️ Consideraciones**:
- Usar USB confiable (no viejo o dañado)
- Verificar que los archivos se copiaron correctamente (abrirlos)
- Llevar el USB el día del evento

---

## 🎨 Fase 2: PASOS OPCIONALES IMPORTANTES

Estos pasos **mejoran significativamente** la presentación. Tiempo estimado: **3-5 horas**.

---

### 🎯 Paso 7: Descargar y Agregar Logos de Proyectos

**Objetivo**: Agregar identidad visual a los proyectos mencionados.

**Tiempo estimado**: 45-60 minutos

**Logos a buscar** (con permiso de uso):
1. **LaWallet**: https://lawallet.io/
2. **Alby**: https://getalby.com/
3. **Bitcoin Argentina**: (buscar logo oficial)
4. **Prism**: (buscar en su sitio/GitHub)
5. **ThunderTip**: https://thundertip.vercel.app/
6. **BTCPayServer**: https://btcpayserver.org/

**Procedimiento**:
```bash
# Crear carpeta para logos
mkdir -p assets/logos

# Descargar logos (ejemplo con wget o curl)
# LaWallet
wget -O assets/logos/lawallet.png [URL_LOGO_LAWALLET]

# Alby
wget -O assets/logos/alby.png [URL_LOGO_ALBY]

# BTCPayServer
wget -O assets/logos/btcpayserver.png [URL_LOGO_BTCPAYSERVER]

# Optimizar tamaño (con ImageMagick)
cd assets/logos
for logo in *.png; do
  convert "$logo" -resize 200x200 -background none -gravity center -extent 200x200 "optimized-$logo"
done
```

**Insertar en PPTX**:
1. Slide 6 (Adopción Local): Agregar logos de LaWallet, Bitcoin Argentina
2. Slide 7 (Adopción Internacional): Agregar logos de Alby, Prism, ThunderTip
3. Slide 8 (Integraciones): Agregar logo de BTCPayServer, LNbits
4. Posicionar los logos pequeños al lado de los bullets correspondientes

**⚠️ Consideraciones**:
- Verificar licencia de uso de cada logo
- Si no encuentras logo, usar emoji o icono genérico
- Logos deben ser PNG con fondo transparente
- Tamaño: ~50-100px en las slides (pequeños, no dominantes)

---

### 📸 Paso 8: Crear Screenshots de Interfaces NWC

**Objetivo**: Mostrar visualmente cómo se ve NWC en la práctica.

**Tiempo estimado**: 30-45 minutos

**Screenshots a crear**:

**A. Configuración de NWC en Alby Hub**:
1. Ir a https://getalby.com/ (o tu instancia de Alby Hub)
2. Navegar a configuración de NWC
3. Capturar pantalla de:
   - Pantalla de permisos granulares
   - String de conexión NWC (censurar partes sensibles)
   - Presupuestos configurados

**B. Ejemplo de App Conectada**:
1. Conectar una app de prueba con NWC
2. Capturar pantalla del flujo de autorización
3. Capturar confirmación de pago

**C. BTCPayServer + NWC**:
1. Si tienes acceso, capturar configuración de suscripciones
2. Vista de comerciante de pagos recibidos vía NWC

**Guardar screenshots**:
```bash
# Guardar en assets/screenshots/
mkdir -p assets/screenshots

# Nombrar descriptivamente
mv ~/Downloads/screenshot.png assets/screenshots/alby-permisos-nwc.png
mv ~/Downloads/screenshot2.png assets/screenshots/app-conectada-nwc.png
mv ~/Downloads/screenshot3.png assets/screenshots/btcpay-suscripciones.png

# Optimizar peso
for img in assets/screenshots/*.png; do
  pngquant --quality=65-80 "$img" --ext -compressed.png --force
done
```

**Insertar en PPTX**:
- Slide 4 (Qué es NWC): Screenshot de permisos
- Slide 9 (BTCPayServer): Screenshot de suscripciones
- Slide 11 (IA + MCP): Screenshot de app conectada (si aplica)

**⚠️ Consideraciones**:
- Censurar información sensible (claves, emails, montos reales)
- Screenshots deben ser nítidos (no borrosos)
- Usar recortes (crop) para mostrar solo lo relevante
- Peso máximo por screenshot: 500KB (comprimir si es necesario)

---

### 📝 Paso 9: Ampliar Speaker Notes con Timing Detallado

**Objetivo**: Tener guía completa para presentar sin improvisación.

**Tiempo estimado**: 1-2 horas

**Template para ampliar notas** (en cada slide del PPTX):

```
TIMING TARGET: 1m 30s (90 segundos)

=== BEAT 1: Introducción (20s) ===
"En esta slide vamos a ver [tema principal]"
[Pausa 2s]

=== BEAT 2: Punto clave 1 (30s) ===
"Primero, [bullet 1]"
[Anécdota/ejemplo: X]
[Pausa 2s]

=== BEAT 3: Punto clave 2 (30s) ===
"Segundo, [bullet 2]"
[Dato concreto: Y]

=== BEAT 4: Transición (10s) ===
"Con esto en mente, pasemos a [siguiente tema]"
[Click para avanzar]

PREGUNTAS ANTICIPADAS:
- ¿[Pregunta común]? → [Respuesta breve]

ANÉCDOTA BACKUP (si hay tiempo):
[Historia corta relacionada, 30s]

FALLBACK (si me estoy pasando de tiempo):
Saltar beat 4, ir directo a siguiente slide.
```

**Ejemplo concreto para Slide 4 (Qué es NWC)**:

```
TIMING TARGET: 1m 30s

=== BEAT 1: Introducción (15s) ===
"NWC es básicamente OAuth para Lightning, pero descentralizado"
[Mostrar slide]

=== BEAT 2: Protocolo Nostr (25s) ===
"Está basado en Nostr, específicamente en NIP-47"
"Eventos firmados, relays descentralizados, sin single point of failure"
[Pausa]

=== BEAT 3: Permisos granulares (25s) ===
"Lo clave: puedo dar acceso limitado a mi wallet"
"Ejemplo: app de suscripciones puede cobrar max $10/mes"
"Si la app se compromete, solo pierdo $10"

=== BEAT 4: Interoperabilidad (15s) ===
"Funciona con cualquier wallet y app que implemente NIP-47"
"Eso es el poder de los estándares abiertos"

=== BEAT 5: Transición (10s) ===
"Ahora veamos casos de uso concretos"

PREGUNTAS ANTICIPADAS:
- ¿Es custodial? → No, tu wallet mantiene las claves
- ¿Qué pasa si roban el string NWC? → Solo tienen acceso limitado por los permisos
- ¿Es seguro? → Tan seguro como los permisos que configures

ANÉCDOTA:
"Cuando gané el hackathon de Geyser implementando esto..."
```

**Dónde agregar las notas**:
1. En PowerPoint: View > Notes Page
2. En LibreOffice: View > Notes
3. O en archivo separado `docs/SPEAKER-NOTES-DETALLADAS.md`

**⚠️ Consideraciones**:
- Practicar con las notas al menos 2 veces
- No leer las notas palabra por palabra (usar como guía)
- Tener notas impresas como backup (por si falla laptop)

---

### 🎬 Paso 10: Agregar Animaciones y Transiciones (Opcional)

**Objetivo**: Hacer la presentación más dinámica sin distraer.

**Tiempo estimado**: 30-45 minutos

**Recomendaciones de animaciones**:

**Transiciones entre slides** (sutiles):
- Usar "Fade" o "Push" (evitar efectos llamativos)
- Duración: 0.3-0.5 segundos
- Aplicar a todas las slides para consistencia

**Animaciones de bullets** (opcional):
- Aparecer de uno en uno con "Fade In"
- Sin sonidos
- Duración: 0.2-0.3 segundos por bullet

**En PowerPoint**:
1. Seleccionar todas las slides
2. Transitions > Fade > Duration 0.4s
3. Apply to All
4. Para bullets: Animations > Fade > On Click

**En LibreOffice**:
1. Slide > Slide Transition > Fade
2. Speed: Medium
3. Apply to All Slides

**⚠️ Consideraciones**:
- **Menos es más**: No abusar de animaciones
- Evitar efectos sonoros (distraen)
- Probar en proyector antes del evento
- Tener versión sin animaciones como backup

---

### 📄 Paso 11: Crear Versión Condensada (Plan B)

**Objetivo**: Tener versión de 10 minutos por si hay recorte de tiempo.

**Tiempo estimado**: 45-60 minutos

**Slides a conservar** (reducir de 13 a 8-9):
1. ✅ Portada (30s)
2. ✅ El problema + Por qué ahora (fusionadas, 1m 30s)
3. ✅ Qué es NWC (1m 30s)
4. ✅ Adopción Local + Internacional (fusionadas, 2m)
5. ✅ BTCPayServer + Hackatón (1m 30s)
6. ✅ IA + MCP (1m)
7. ✅ CTA (1m)
8. ✅ Gracias (30s)

**Total: ~10 minutos**

**Procedimiento**:
```bash
# Duplicar PPTX
cp output/slides-nwc-labitconf.pptx output/slides-nwc-labitconf-10min.pptx

# Abrir en PowerPoint/LibreOffice
# Eliminar/fusionar slides según lista arriba
# Guardar con nombre diferente
```

**⚠️ Consideraciones**:
- Ensayar también esta versión corta
- Llevarla en USB junto con la versión completa
- Avisar a organizadores si necesitas cambiar de versión

---

## 💼 Fase 3: PASOS OPCIONALES NICE-TO-HAVE

Estos pasos son **buenos de tener** pero no críticos. Tiempo estimado: **5-8 horas**.

---

### 🤖 Paso 12: Configurar GitHub Actions CI/CD

**Objetivo**: Auto-generar PPTX en cada commit.

**Tiempo estimado**: 1-2 horas

**Crear archivo `.github/workflows/build-slides.yml`**:
```yaml
name: Build Slides PPTX

on:
  push:
    branches: [main]
    paths:
      - 'content/slides-nwc.md'
      - 'scripts/md_to_pptx.py'
  pull_request:
    branches: [main]

jobs:
  build:
    runs-on: ubuntu-latest

    steps:
      - name: Checkout code
        uses: actions/checkout@v3

      - name: Setup Python
        uses: actions/setup-python@v4
        with:
          python-version: '3.10'

      - name: Install dependencies
        run: |
          pip install python-pptx pillow qrcode

      - name: Build PPTX
        run: |
          python scripts/md_to_pptx.py

      - name: Check file size
        run: |
          SIZE=$(stat -c%s output/slides-nwc-labitconf.pptx)
          MAX_SIZE=15728640  # 15MB in bytes
          if [ $SIZE -gt $MAX_SIZE ]; then
            echo "❌ Error: PPTX exceeds 15MB ($SIZE bytes)"
            exit 1
          fi
          echo "✅ PPTX size OK: $SIZE bytes"

      - name: Upload PPTX artifact
        uses: actions/upload-artifact@v3
        with:
          name: slides-pptx
          path: output/slides-nwc-labitconf.pptx
          retention-days: 30
```

**Comandos**:
```bash
# Crear directorio
mkdir -p .github/workflows

# Crear archivo (contenido arriba)
nano .github/workflows/build-slides.yml

# Commit y push
git add .github/workflows/build-slides.yml
git commit -m "Add GitHub Actions workflow for auto-build"
git push origin main

# Ver resultado en GitHub
# https://github.com/tuusuario/slides-labitconf-2025/actions
```

**⚠️ Consideraciones**:
- Solo útil si ya tienes el repo en GitHub
- Verificar que el workflow pase correctamente
- Descargar artifact generado para probar

---

### 🧪 Paso 13: Agregar Testing Automatizado

**Objetivo**: Validar automáticamente el PPTX generado.

**Tiempo estimado**: 1-2 horas

**Crear `scripts/test_pptx.py`**:
```python
#!/usr/bin/env python3
"""Tests automatizados para validar el PPTX generado"""

import sys
from pathlib import Path
from pptx import Presentation

PPTX_PATH = Path('output/slides-nwc-labitconf.pptx')
MAX_SIZE_MB = 15
MAX_SLIDES = 15
MIN_SLIDES = 10
MAX_BULLETS_PER_SLIDE = 5

def test_file_exists():
    """Verifica que el PPTX existe"""
    assert PPTX_PATH.exists(), f"❌ PPTX no encontrado: {PPTX_PATH}"
    print("✅ PPTX existe")

def test_file_size():
    """Verifica que el peso es <15MB"""
    size_mb = PPTX_PATH.stat().st_size / (1024 * 1024)
    assert size_mb < MAX_SIZE_MB, f"❌ PPTX excede {MAX_SIZE_MB}MB: {size_mb:.2f}MB"
    print(f"✅ Peso OK: {size_mb:.2f}MB")

def test_slide_count():
    """Verifica cantidad de slides"""
    prs = Presentation(str(PPTX_PATH))
    count = len(prs.slides)
    assert MIN_SLIDES <= count <= MAX_SLIDES, f"❌ Cantidad de slides fuera de rango: {count}"
    print(f"✅ Cantidad de slides OK: {count}")

def test_no_overflow():
    """Verifica que no haya textos excesivamente largos"""
    prs = Presentation(str(PPTX_PATH))
    MAX_TEXT_LENGTH = 500  # caracteres por shape

    for i, slide in enumerate(prs.slides, 1):
        for shape in slide.shapes:
            if shape.has_text_frame:
                text = shape.text_frame.text
                if len(text) > MAX_TEXT_LENGTH:
                    print(f"⚠️  Warning: Slide {i} tiene texto muy largo ({len(text)} chars)")

    print("✅ No overflow detectado")

if __name__ == '__main__':
    tests = [
        test_file_exists,
        test_file_size,
        test_slide_count,
        test_no_overflow
    ]

    failed = 0
    for test in tests:
        try:
            test()
        except AssertionError as e:
            print(e)
            failed += 1

    if failed > 0:
        print(f"\n❌ {failed} tests fallaron")
        sys.exit(1)
    else:
        print(f"\n✅ Todos los tests pasaron")
        sys.exit(0)
```

**Ejecutar tests**:
```bash
chmod +x scripts/test_pptx.py
source venv/bin/activate
python scripts/test_pptx.py
```

**Integrar con GitHub Actions** (agregar al workflow):
```yaml
      - name: Run tests
        run: |
          python scripts/test_pptx.py
```

---

### 🏷️ Paso 14: Versionado con Git Tags

**Objetivo**: Marcar versiones importantes del proyecto.

**Tiempo estimado**: 10-15 minutos

**Comandos**:
```bash
# Versión inicial con contenido investigado
git tag -a v0.2.0 -m "Versión con investigación completa de proyectos NWC"
git push origin v0.2.0

# Versión con diagramas agregados
git tag -a v0.3.0 -m "Versión con diagramas Mermaid convertidos a PNG"
git push origin v0.3.0

# Versión final pre-evento
git tag -a v1.0.0 -m "Versión final lista para LABITCONF 2025"
git push origin v1.0.0

# Ver tags
git tag -l

# Ver detalles de un tag
git show v1.0.0
```

**Crear CHANGELOG.md**:
```markdown
# Changelog

## [1.0.0] - 2025-10-XX (Versión final LABITCONF)
### Added
- Diagramas Mermaid convertidos a PNG
- Logos de proyectos insertados
- Speaker notes ampliadas con timing
- PDF backup exportado

### Changed
- Contenido actualizado con proyectos reales investigados
- Timing optimizado para 15 minutos

## [0.3.0] - 2025-10-19
### Added
- Diagramas de arquitectura NWC + MCP

## [0.2.0] - 2025-10-18
### Added
- Investigación completa de proyectos Argentina/LatAm
- Investigación de proyectos internacionales
- Fuentes y referencias verificadas
```

---

### 🌐 Paso 15: Generar Preview HTML (Opcional)

**Objetivo**: Vista previa rápida sin abrir PowerPoint.

**Tiempo estimado**: 1-2 horas

**Crear `scripts/generate_html_preview.py`**:
```python
#!/usr/bin/env python3
"""Genera preview HTML de las slides desde Markdown"""

import re
from pathlib import Path

MD_PATH = Path('content/slides-nwc.md')
OUTPUT_PATH = Path('output/preview.html')

HTML_TEMPLATE = """<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>NWC Slides Preview</title>
    <style>
        body {{ font-family: Arial, sans-serif; max-width: 1200px; margin: 0 auto; padding: 20px; }}
        .slide {{ border: 2px solid #4285F4; margin: 40px 0; padding: 30px; background: #f5f5f5; page-break-after: always; }}
        .slide h2 {{ color: #212121; border-bottom: 3px solid #4285F4; padding-bottom: 10px; }}
        .slide ul {{ line-height: 1.8; }}
        .slide .notes {{ background: #fff3cd; padding: 15px; margin-top: 20px; border-left: 4px solid #FFAB40; }}
        .slide .meta {{ color: #666; font-size: 0.9em; margin-bottom: 10px; }}
        @media print {{ .slide {{ page-break-after: always; }} }}
    </style>
</head>
<body>
    <h1>Preview: Slides NWC LABITCONF 2025</h1>
    {slides}
</body>
</html>
"""

def parse_slides(md_content):
    """Parsea slides desde Markdown"""
    slides_html = []
    sections = re.split(r'\n---\n', md_content)

    for i, section in enumerate(sections, 1):
        if not section.strip() or section.startswith('#'):
            continue

        # Extraer título
        title_match = re.search(r'^##\s+(.+)$', section, re.MULTILINE)
        title = title_match.group(1) if title_match else f"Slide {i}"

        # Extraer bullets
        bullets = re.findall(r'^-\s+(.+)$', section, re.MULTILINE)
        bullets_html = "".join([f"<li>{b}</li>" for b in bullets])

        # Extraer notas
        notes_match = re.search(r'\*\*Notas\*\*:\s*(.+)', section)
        notes = notes_match.group(1) if notes_match else ""

        slide_html = f"""
        <div class="slide">
            <div class="meta">Slide {i}</div>
            <h2>{title}</h2>
            <ul>{bullets_html}</ul>
            {f'<div class="notes"><strong>Notas:</strong> {notes}</div>' if notes else ''}
        </div>
        """
        slides_html.append(slide_html)

    return "".join(slides_html)

def main():
    with open(MD_PATH, 'r', encoding='utf-8') as f:
        md_content = f.read()

    slides_html = parse_slides(md_content)
    html = HTML_TEMPLATE.format(slides=slides_html)

    with open(OUTPUT_PATH, 'w', encoding='utf-8') as f:
        f.write(html)

    print(f"✅ Preview generado: {OUTPUT_PATH}")
    print(f"Abre en navegador: file://{OUTPUT_PATH.absolute()}")

if __name__ == '__main__':
    main()
```

**Ejecutar**:
```bash
chmod +x scripts/generate_html_preview.py
source venv/bin/activate
python scripts/generate_html_preview.py

# Abrir en navegador
xdg-open output/preview.html
```

---

## 🎉 Fase 4: PASOS POST-EVENTO

Estos pasos son para **después** de la charla. Tiempo estimado: variable.

---

### 📤 Paso 16: Subir a GitHub Público

**Tiempo estimado**: 30-45 minutos

```bash
# Si el repo es privado, hacerlo público
# Settings > Danger Zone > Change visibility > Make public

# O crear nuevo repo público
gh repo create slides-nwc-labitconf-2025 --public --source=. --remote=origin --push

# Agregar README completo
# Agregar licencia
echo "MIT" > LICENSE

# Tag versión post-evento
git tag -a v1.1.0 -m "Versión presentada en LABITCONF 2025"
git push origin v1.1.0 --tags
```

---

### 📝 Paso 17: Escribir Blog Post

**Tiempo estimado**: 2-4 horas

**Estructura sugerida**:
```markdown
# NWC para Desarrolladores: Resumen de mi Charla en LABITCONF 2025

## Introducción
[Contexto del evento, por qué NWC, audiencia]

## El Problema
[Ampliar slide 2]

## La Solución: Nostr Wallet Connect
[Ampliar slides 4-5]

## Adopción en LatAm
[Ampliar slide 6 con más detalles]

## Casos de Uso Internacionales
[Ampliar slide 7]

## Mi Proyecto: Suscripciones NWC en BTCPayServer
[Ampliar slide 9, agregar detalles técnicos]

## IA + MCP: El Futuro
[Ampliar slide 11]

## Recursos para Empezar
[Links, tutoriales, repo]

## Agradecimientos
[Organizadores, sponsors, comunidad]
```

**Publicar en**:
- Blog personal
- Medium
- Dev.to
- Nostr (thread largo)

---

### 📊 Paso 18: Encuesta de Feedback

**Tiempo estimado**: 30 minutos

**Crear con Google Forms/Typeform**:
- ¿Qué te pareció la presentación? (1-5 estrellas)
- ¿Conocías NWC antes? (Sí/No)
- ¿Planeas probarlo? (Sí/No/Ya lo uso)
- ¿Qué te gustaría saber más? (texto libre)
- ¿Feedback adicional? (texto libre)

**Generar QR** para la encuesta:
```bash
source venv/bin/activate
python scripts/generate_qr.py
# Agregar URL de encuesta al script
```

**Compartir**:
- En thread de Nostr
- En tweet/post sobre la charla
- En repo de GitHub

---

### 🌍 Paso 19: Versión en Inglés

**Tiempo estimado**: 3-5 horas

```bash
# Duplicar contenido
cp content/slides-nwc.md content/slides-nwc-en.md

# Traducir todo el contenido
# (manualmente o con asistencia de IA)

# Generar PPTX en inglés
# Modificar script para leer slides-nwc-en.md

# Subir a repo
git add content/slides-nwc-en.md output/slides-nwc-en.pptx
git commit -m "Add English version of slides"
```

---

### 🎥 Paso 20: Video Tutorial

**Tiempo estimado**: 4-8 horas

**Contenido**:
1. Intro (1 min)
2. Qué es NWC (5 min)
3. Cómo configurar NWC en Alby (5 min)
4. Conectar app de ejemplo (5 min)
5. Casos de uso avanzados (5 min)
6. Recursos y cierre (2 min)

**Herramientas**:
- OBS Studio para grabar
- Kdenlive/DaVinci Resolve para editar
- Subir a YouTube/PeerTube/Nostr

---

## 🔍 RESUMEN: Orden Recomendado de Ejecución

### **CRÍTICOS (Hacer en este orden)**:
1. ✅ Paso 1: Convertir diagramas Mermaid a PNG (30 min)
2. ✅ Paso 2: Insertar diagramas en PPTX (20 min)
3. ✅ Paso 3: Exportar PDF backup (10 min)
4. ✅ Paso 5: Ensayar timing (1-2 horas, múltiples veces)
5. ✅ Paso 9: Ampliar speaker notes (1 hora)
6. ✅ Paso 4: Validar PPTX en plataformas (30 min)
7. ✅ Paso 6: Crear backups (15 min)

**Total tiempo crítico: ~4-6 horas**

### **OPCIONALES IMPORTANTES (Si tienes tiempo)**:
8. 🎯 Paso 7: Agregar logos (1 hora)
9. 📸 Paso 8: Screenshots (45 min)
10. 📄 Paso 11: Versión condensada (1 hora)
11. 🎬 Paso 10: Animaciones (45 min)

**Total tiempo opcional importante: ~3-4 horas**

### **NICE-TO-HAVE (Si sobra tiempo)**:
12. 🤖 Paso 12: GitHub Actions (2 horas)
13. 🧪 Paso 13: Tests automatizados (2 horas)
14. 🏷️ Paso 14: Git tags (15 min)
15. 🌐 Paso 15: HTML preview (1-2 horas)

**Total tiempo nice-to-have: ~5-7 horas**

### **POST-EVENTO**:
16-20. Pasos 16-20 (variable, varias horas)

---

## ✅ Checklist de Progreso

Marca cada paso a medida que lo completes:

**Fase 1: CRÍTICOS**
- [ ] Paso 1: Convertir diagramas Mermaid a PNG
- [ ] Paso 2: Insertar diagramas en PPTX
- [ ] Paso 3: Exportar PDF backup
- [ ] Paso 4: Validar PPTX en plataformas
- [ ] Paso 5: Ensayar timing (ensayo 1)
- [ ] Paso 5: Ensayar timing (ensayo 2)
- [ ] Paso 5: Ensayar timing (ensayo 3)
- [ ] Paso 6: Crear backups (USB + Cloud + Email)

**Fase 2: OPCIONALES IMPORTANTES**
- [ ] Paso 7: Logos descargados
- [ ] Paso 7: Logos insertados en PPTX
- [ ] Paso 8: Screenshots creados
- [ ] Paso 8: Screenshots insertados
- [ ] Paso 9: Speaker notes ampliadas
- [ ] Paso 10: Animaciones agregadas
- [ ] Paso 11: Versión condensada creada

**Fase 3: NICE-TO-HAVE**
- [ ] Paso 12: GitHub Actions configurado
- [ ] Paso 13: Tests automatizados
- [ ] Paso 14: Git tags creados
- [ ] Paso 15: HTML preview generado

**Fase 4: POST-EVENTO**
- [ ] Paso 16: Repo público
- [ ] Paso 17: Blog post
- [ ] Paso 18: Encuesta feedback
- [ ] Paso 19: Versión inglés
- [ ] Paso 20: Video tutorial

---

## 🚨 Troubleshooting

### Problema: mermaid-cli no instala
**Solución**: Usar opción online (mermaid.live) o npx

### Problema: PPTX excede 15MB después de agregar imágenes
**Solución**:
```bash
# Comprimir todas las imágenes
cd assets
pngquant --quality=65-80 *.png --ext -compressed.png --force

# Reemplazar originales
for f in *-compressed.png; do
  mv "$f" "${f%-compressed.png}.png"
done
```

### Problema: Fuentes no se ven en proyector
**Solución**: Embeber fuentes en PPTX
- PowerPoint: File > Options > Save > Embed fonts
- LibreOffice: Usar fuentes sistema estándar (Arial)

### Problema: Timing excede 15 minutos por mucho
**Solución**: Usar versión condensada (Paso 11)

---

## 📞 Soporte

Si tienes problemas ejecutando estos pasos:
- Revisar QUICK-START.md
- Revisar TROUBLESHOOTING en README.md
- Abrir issue en GitHub (si el repo es público)

---

**¡Éxito con tu presentación en LABITCONF 2025!** 🚀

**Última actualización**: 2025-10-18
