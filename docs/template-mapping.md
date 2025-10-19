# Mapeo de Layouts LABITCONF para Slides NWC

## Información del Template

- **Resolución**: 1920x1080
- **Tamaño máximo**: 15MB
- **Fuentes**: Arial (major y minor)
- **Paleta principal**:
  - accent1: #4285F4 (azul Google)
  - accent2: #212121 (negro casi)
  - accent3: #78909C (gris azulado)
  - accent4: #FFAB40 (naranja)
  - accent5: #0097A7 (cian)
  - accent6: #EEFF41 (amarillo lima)

## Mapeo de Layouts para la Presentación NWC

| Slide # | Contenido | Layout Recomendado | ID Layout | Razón |
|---------|-----------|-------------------|-----------|--------|
| 1 | Portada: NWC para desarrolladores | **Cover - Color 01** | 1 | Portada con imagen de fondo |
| 2 | El problema actual | **TITLE_AND_BODY 2** | 5 | Título + bullets |
| 3 | Por qué NWC ahora | **TITLE_AND_BODY 2** | 5 | Título + bullets |
| 4 | Qué es NWC + casos de uso | **TITLE_AND_BODY 2** | 5 | Título + bullets |
| 5 | Suscripciones y subcuentas | **TITLE_AND_TWO_COLUMNS** | 6 | Dos flujos en paralelo |
| 6 | Adopción local (Argentina/LatAm) | **ONE_COLUMN_TEXT** | 8 | Lista de proyectos |
| 7 | Adopción internacional | **ONE_COLUMN_TEXT** | 8 | Lista de proyectos |
| 8 | Integraciones populares | **TITLE_AND_BODY 2** | 5 | Título + bullets |
| 9 | BTCPayServer + Hackatón | **TITLE_AND_BODY 2** | 5 | Contexto del proyecto |
| 10 | NIPs relevantes + seguridad | **TITLE_AND_TWO_COLUMNS** | 6 | NIPs | Seguridad |
| 11 | IA + MCP | **TITLE_AND_BODY 2** | 5 | Concepto + beneficios |
| 12 | CTA y recursos | **TITLE_AND_BODY 2** | 5 | Links + QR |

## Layouts Útiles para Referencia

### Portada y Secciones
- **Layout 1 (Cover - Color 01)**: Portada con fondo de imagen
- **Layout 4 (SECTION_HEADER)**: Separadores de sección
- **Layout 15 (TITLE_1)**: Títulos alternativos

### Contenido
- **Layout 5 (TITLE_AND_BODY 2)**: Slide estándar (título + bullets)
- **Layout 6 (TITLE_AND_TWO_COLUMNS)**: Comparaciones, flujos paralelos
- **Layout 8 (ONE_COLUMN_TEXT)**: Listas, proyectos

### Especiales
- **Layout 13 (BIG_NUMBER)**: Para mostrar métricas destacadas
- **Layout 20**: Tiene placeholder para imagen
- **Layout 14 (BLANK)**: Slide en blanco para contenido custom

## Notas de Estilo

### Tipografía
- Fuente principal: **Arial** (según template)
- En el template se detecta **Space Grotesk SemiBold** en algunos layouts (posiblemente custom)
- Tamaño de cuerpo recomendado: ≥ 32pt para legibilidad en proyector

### Colores
- Usar **accent1 (#4285F4)** para highlights y CTAs
- Usar **accent4 (#FFAB40)** para warnings o puntos de atención
- Texto principal: dk2 (#A7A7A7) o lt1 (#FFFFFF) según fondo
- Fondo preferido: dk2 o colores de los layouts oficiales

### Contenido
- Máximo 5 bullets por slide
- Máximo 40 palabras por bullet
- 1 emoji por título (opcionales)
- Incluir número de slide en footer

## Compatibilidad con python-pptx

Los layouts se referencian por índice (0-based):
- Layout 0 → Cover - Color 01 (Portada)
- Layout 4 → TITLE_AND_BODY 2 (Contenido estándar)
- Layout 5 → TITLE_AND_TWO_COLUMNS (Dos columnas)
- Layout 7 → ONE_COLUMN_TEXT

```python
from pptx import Presentation

prs = Presentation('Template_SPEAKERS_2025.pptx')
slide_layout = prs.slide_layouts[4]  # TITLE_AND_BODY 2
slide = prs.slides.add_slide(slide_layout)
```
