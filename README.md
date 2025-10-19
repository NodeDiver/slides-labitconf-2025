# Slides NWC para LABITCONF 2025

Presentación sobre **Nostr Wallet Connect (NWC) para Desarrolladores** para LABITCONF 2025.

## 📋 Información General

- **Evento**: LABITCONF 2025
- **Tema**: NWC (Nostr Wallet Connect) para desarrolladores
- **Duración**: 15 minutos
- **Formato**: PPTX (1920x1080, <15MB)
- **Template**: Template_SPEAKERS_2025.pptx (oficial LABITCONF)

## 🚀 Quick Start

### Generar las slides

```bash
# Opción 1: Usar el script de build
./scripts/build.sh

# Opción 2: Ejecutar manualmente
source venv/bin/activate
python scripts/md_to_pptx.py
```

El archivo PPTX se generará en `output/slides-nwc-labitconf.pptx`.

### Editar el contenido

1. Edita `content/slides-nwc.md` con el contenido de las slides
2. Ejecuta el script de build para regenerar el PPTX
3. Abre el PPTX en PowerPoint/LibreOffice para revisar

## 📁 Estructura del Proyecto

```
slides-labitconf-2025/
├── Template_SPEAKERS_2025.pptx   # Template oficial LABITCONF
├── content/
│   ├── slides-nwc.md              # Contenido de las slides (editable)
│   ├── sources.md                 # Referencias y fuentes
│   └── constraints.md             # Lineamientos y constraints
├── scripts/
│   ├── md_to_pptx.py              # Conversor Markdown → PPTX
│   ├── build.sh                   # Script de build
│   └── analyze_template.py        # Análisis del template
├── docs/
│   ├── template-analysis.md       # Análisis del template LABITCONF
│   ├── template-mapping.md        # Mapeo de layouts
│   └── template_extracted/        # Template descomprimido
├── assets/                        # Imágenes, logos, diagramas
├── output/
│   └── slides-nwc-labitconf.pptx  # PPTX generado
├── venv/                          # Entorno virtual Python
└── CHECKLIST-labitconf.md         # Checklist pre-evento
```

## 🎨 Especificaciones Técnicas

### Requisitos LABITCONF

- **Formato**: PowerPoint (.pptx)
- **Resolución**: 1920x1080 (16:9)
- **Tamaño máximo**: 15 MB
- **Fuentes**: Arial (template oficial)
- **Colores**: Paleta oficial LABITCONF
  - accent1: #4285F4 (azul)
  - accent2: #212121 (negro)
  - accent3: #78909C (gris azulado)
  - accent4: #FFAB40 (naranja)

### Estructura de Slides

| # | Contenido | Layout |
|---|-----------|--------|
| 1 | Portada | Cover - Color 01 |
| 2 | El problema | TITLE_AND_BODY 2 |
| 3 | Por qué NWC ahora | TITLE_AND_BODY 2 |
| 4 | Qué es NWC | TITLE_AND_BODY 2 |
| 5 | Suscripciones y subcuentas | TITLE_AND_TWO_COLUMNS |
| 6 | Adopción local | ONE_COLUMN_TEXT |
| 7 | Adopción internacional | ONE_COLUMN_TEXT |
| 8 | Integraciones | TITLE_AND_BODY 2 |
| 9 | BTCPayServer + Hackatón | TITLE_AND_BODY 2 |
| 10 | NIPs + Seguridad | TITLE_AND_TWO_COLUMNS |
| 11 | IA + MCP | TITLE_AND_BODY 2 |
| 12 | CTA y recursos | TITLE_AND_BODY 2 |

## 🛠️ Dependencias

- Python 3.8+
- python-pptx
- pillow
- qrcode

Instalación automática con `./scripts/build.sh`.

## 📝 Workflow de Edición

1. **Editar contenido**: Modifica `content/slides-nwc.md`
2. **Actualizar assets**: Agrega imágenes a `assets/`
3. **Regenerar PPTX**: Ejecuta `./scripts/build.sh`
4. **Revisar**: Abre `output/slides-nwc-labitconf.pptx`
5. **Iterar**: Repite hasta estar satisfecho

## 📚 Documentación

- [Template Analysis](docs/template-analysis.md): Análisis detallado del template LABITCONF
- [Template Mapping](docs/template-mapping.md): Mapeo de layouts y recomendaciones
- [Sources](content/sources.md): Referencias y fuentes para investigación
- [Constraints](content/constraints.md): Lineamientos de contenido y estilo
- [Checklist](CHECKLIST-labitconf.md): Verificación pre-evento

## ✅ Checklist Pre-Entrega

Ver [CHECKLIST-labitconf.md](CHECKLIST-labitconf.md) para la lista completa.

Puntos clave:
- [ ] Peso <15MB
- [ ] Layouts correctos del template oficial
- [ ] Contenido completo (sin marcadores [PENDIENTE])
- [ ] Referencias verificadas
- [ ] Assets optimizados
- [ ] Backup en PDF

## 🔧 Scripts Disponibles

### `scripts/build.sh`
Genera el PPTX completo desde Markdown.

### `scripts/md_to_pptx.py`
Conversor Markdown → PPTX con soporte para:
- Layouts del template LABITCONF
- Dos columnas
- Bullets con formato
- Notas del orador
- Colores del tema

### `scripts/analyze_template.py`
Analiza el template PPTX y extrae:
- Layouts disponibles
- Colores del tema
- Fuentes

## 📦 Tareas Pendientes

- [ ] Investigar proyectos locales NWC (Argentina/LatAm)
- [ ] Confirmar ejemplos internacionales (juegos, bots, apps)
- [ ] Revisar NIPs actualizados relacionados con NWC
- [ ] Generar diagramas (arquitectura NWC + MCP)
- [ ] Crear QR codes para recursos
- [ ] Exportar PDF backup

## 📄 Licencia

Contenido de la presentación: CC BY 4.0
Scripts y código: MIT

---

**Última actualización**: 2025-10-18