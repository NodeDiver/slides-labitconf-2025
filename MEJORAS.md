# Ideas y Mejoras para el Proyecto

Este documento contiene recomendaciones para mejorar las slides y el flujo de trabajo del proyecto.

---

## 🚀 Mejoras Inmediatas (Pre-Evento)

### 1. Diagramas Visuales
- [ ] **Convertir diagramas Mermaid a PNG** (ver `assets/README.md`)
  - `architecture-nwc-mcp.png`: Para slide "IA + MCP"
  - `nwc-simple-flow.png`: Para slide "Cómo funciona"
- [ ] **Insertar diagramas en PPTX manualmente**
  - Abrir PPTX en PowerPoint/LibreOffice
  - Agregar imágenes en slides relevantes
- [ ] **Crear diagrama de permisos granulares**
  - Mostrar visualmente cómo funcionan los límites de presupuesto/tiempo

### 2. Elementos Visuales Adicionales
- [ ] **Logos de proyectos** (con permiso):
  - LaWallet logo
  - Alby logo
  - Bitcoin Argentina logo
  - Logos de Prism, ThunderTip, BTCPayServer
- [ ] **Screenshots**:
  - Captura de interfaz de configuración NWC
  - Ejemplo de suscripción en BTCPayServer
  - Vista de permisos en Alby Hub
- [ ] **Íconos consistentes**:
  - Usar misma paleta de emojis/íconos en todas las slides
  - Considerar iconos custom si el template lo permite

### 3. Animaciones y Transiciones (Opcional)
- [ ] **Transiciones suaves** entre slides
- [ ] **Animaciones de aparición** para bullets (uno por vez)
- [ ] **Highlight en datos clave** (números, nombres de proyectos)

### 4. Speaker Notes Detalladas
- [ ] **Ampliar notas del orador** con:
  - Beats de timing (30s, 1min, 2min por slide)
  - Preguntas anticipadas del público
  - Anécdotas o ejemplos ad-hoc
  - Transiciones verbales entre slides

### 5. Backup y Contingencias
- [x] **Export a PDF** (pendiente)
  - Abrir PPTX en PowerPoint/LibreOffice
  - File > Export as PDF
  - Guardar en `output/slides-nwc-labitconf.pdf`
- [ ] **Versión sin animaciones** (por si hay problemas técnicos)
- [ ] **Versión condensada** (10 slides para 10 minutos, por si hay recorte de tiempo)

---

## 🔧 Mejoras Técnicas del Workflow

### 6. Automatización Completa
- [ ] **GitHub Actions workflow** para auto-build:
  ```yaml
  name: Build Slides
  on: [push]
  jobs:
    build:
      runs-on: ubuntu-latest
      steps:
        - uses: actions/checkout@v3
        - name: Setup Python
          uses: actions/setup-python@v4
          with:
            python-version: '3.10'
        - name: Install deps
          run: pip install python-pptx pillow qrcode
        - name: Build PPTX
          run: python scripts/md_to_pptx.py
        - name: Upload artifact
          uses: actions/upload-artifact@v3
          with:
            name: slides-pptx
            path: output/slides-nwc-labitconf.pptx
  ```

### 7. Mejoras al Script md_to_pptx.py
- [ ] **Soporte para imágenes en Markdown**:
  - Parsear `![alt](path/to/image.png)` en el MD
  - Insertar automáticamente en placeholders de imagen
- [ ] **Validación de longitud de texto**:
  - Advertir si bullets exceden 40 palabras
  - Advertir si slide tiene >5 bullets
- [ ] **Preview HTML**:
  - Generar vista previa HTML de las slides antes de crear PPTX
  - Útil para revisión rápida sin abrir PowerPoint

### 8. Versionado Semántico
- [ ] **Tags de Git** para versiones:
  - `v0.1.0`: Draft inicial
  - `v0.2.0`: Con contenido real investigado
  - `v1.0.0`: Versión final para entrega
- [ ] **CHANGELOG.md** documentando cambios entre versiones

### 9. Testing Automatizado
- [ ] **Validar que PPTX se genera sin errores**
- [ ] **Verificar peso <15MB** automáticamente
- [ ] **Lint del Markdown** (markdownlint, textlint)
- [ ] **Spell check** en español (hunspell, aspell)

---

## 📚 Contenido y Presentación

### 10. Slide Extra: Demo en Vivo (Opcional)
- [ ] **Preparar demo corta** (2-3 min):
  - Conectar wallet con NWC a una app
  - Mostrar permisos configurados
  - Ejecutar un pago de prueba
  - **IMPORTANTE**: Tener plan B si falla la demo
- [ ] **Screenshots de fallback** por si la demo no funciona

### 11. Slide de Q&A
- [ ] **Agregar slide final con preguntas comunes**:
  - "¿NWC es custodial?"
  - "¿Qué pasa si roban mi string NWC?"
  - "¿Funciona con cualquier wallet Lightning?"
  - "¿Cuál es la diferencia con LNURL?"

### 12. Historias y Casos Reales
- [ ] **Mini caso de estudio** de LaWallet:
  - Problema que resolvió
  - Métrica de adopción (si está disponible)
  - Feedback de usuarios
- [ ] **Quote de algún desarrollador** que use NWC
- [ ] **Estadística impactante** (ej: "X wallets soportan NWC en 2025")

### 13. Call-to-Action Mejorado
- [ ] **QR code más grande** en slide de CTA
- [ ] **Enlace corto** personalizado (ej: `nwc.dev/labitconf`)
- [ ] **Incentivo concreto**:
  - "Prueba NWC en 5 minutos con Alby Hub"
  - "Lista de 20+ apps compatibles en awesome-nwc"
  - "Únete al Discord de NWC devs"

---

## 🎨 Diseño y Accesibilidad

### 14. Consistencia Visual
- [ ] **Revisar alineación** de todos los elementos
- [ ] **Espaciado uniforme** entre bullets
- [ ] **Tamaños de fuente consistentes**
- [ ] **Colores del template** usados coherentemente

### 15. Accesibilidad Mejorada
- [ ] **Alt text en imágenes** (si el PPTX lo soporta)
- [ ] **Alto contraste** verificado en proyector
- [ ] **Fuentes grandes** (mín 24pt, ideal 32pt+)
- [ ] **No depender solo de color** para transmitir info

### 16. Branding Sutil de LABITCONF
- [ ] **Logo de LABITCONF** en footer (si aplica)
- [ ] **Hashtag del evento** en slide final
- [ ] **Año "2025"** visible en portada

---

## 🔬 Investigación Adicional (Post-Entrega)

### 17. Profundizar en NIPs
- [ ] **Leer NIP-47 completo** y agregar detalles técnicos
- [ ] **Revisar otros NIPs** relacionados:
  - NIP-04 (Encrypted DMs) si aplica a NWC
  - NIP-05 (Identifier)
  - NIP-57 (Zaps)
- [ ] **Casos edge** de seguridad en NWC

### 18. Benchmarks y Performance
- [ ] **Latencia de pagos NWC** vs LNURL
- [ ] **Throughput** (pagos por segundo)
- [ ] **Comparativa de consumo de batería** (móviles)

### 19. Roadmap de NWC
- [ ] **Features en desarrollo** (2025)
- [ ] **Propuestas de mejora** (NIPs en draft)
- [ ] **Limitaciones conocidas** y cómo se planean resolver

---

## 🌍 Expansión del Contenido

### 20. Versiones Alternativas
- [ ] **Versión extendida (30 min)** con más detalles técnicos
- [ ] **Versión lightning talk (5 min)** ultra-condensada
- [ ] **Versión en inglés** para eventos internacionales

### 21. Materiales Complementarios
- [ ] **Blog post** basado en la charla
- [ ] **Video tutorial** de configuración NWC
- [ ] **One-pager PDF** descargable con recursos
- [ ] **Cheat sheet** de comandos NWC para desarrolladores

### 22. Engagement Post-Charla
- [ ] **Encuesta de feedback** (Google Forms, Typeform)
- [ ] **Thread en Nostr** con slides y recursos
- [ ] **Repo público en GitHub** con slides + código de ejemplo
- [ ] **Office hours virtuales** para preguntas post-evento

---

## 🛠️ Tooling Avanzado

### 23. Editor Markdown Mejorado
- [ ] **VS Code snippets** para crear slides rápido
- [ ] **Live preview** con extensión de VS Code
- [ ] **Syntax highlighting** custom para formato de slides

### 24. Analytics (Post-Publicación)
- [ ] **Tracking de QR codes** (ej: Bitly analytics)
- [ ] **Métricas de GitHub** (stars, forks del repo)
- [ ] **Engagement en Nostr** (zaps, replies al thread)

### 25. Infraestructura como Código
- [ ] **Dockerfile** para reproducibilidad:
  ```dockerfile
  FROM python:3.10-slim
  RUN apt-get update && apt-get install -y npm
  RUN npm install -g @mermaid-js/mermaid-cli
  COPY requirements.txt .
  RUN pip install -r requirements.txt
  COPY . /slides
  WORKDIR /slides
  CMD ["./scripts/build.sh"]
  ```
- [ ] **docker-compose** para servicios locales (preview server, etc)

---

## 📊 Métricas de Éxito

### 26. Definir KPIs
- [ ] **Feedback del evento** (rating promedio)
- [ ] **Adopción post-charla**:
  - Número de desarrolladores que probaron NWC
  - PRs o issues en proyectos NWC de la comunidad
- [ ] **Alcance**:
  - Vistas del repo en GitHub
  - Compartidos en redes sociales
  - Menciones en Nostr

### 27. Iterar Basándose en Feedback
- [ ] **Incorporar comentarios** del público
- [ ] **Actualizar contenido** con nueva info (trimestral)
- [ ] **Versión 2.0** para próximos eventos

---

## 💡 Ideas Creativas

### 28. Gamificación
- [ ] **Quiz interactivo** al final (Kahoot, Mentimeter)
- [ ] **Reto de implementación**: "Integra NWC en tu app en 30 min"
- [ ] **Bounty/premio** para primer asistente que implemente NWC

### 29. Colaboración Comunitaria
- [ ] **Lightning talk colaborativa** con otro speaker de NWC
- [ ] **Panel de discusión** post-charla
- [ ] **Taller práctico** (workshop de 2 horas) basado en las slides

### 30. Multimedia
- [ ] **Video intro** de 30s (opcional, si hay tiempo en agenda)
- [ ] **GIFs animados** en lugar de imágenes estáticas
- [ ] **Audio cues** (si el formato lo permite)

---

## ✅ Priorización

### Must-Have (Antes del Evento)
1. Convertir diagramas Mermaid a PNG
2. Exportar PPTX a PDF backup
3. Ampliar speaker notes con timing
4. Insertar logos (LaWallet, Alby, etc) con permiso

### Should-Have (Semana Pre-Evento)
5. Demo en vivo preparada con fallback
6. Slide de Q&A común
7. Validar en proyector real (1920x1080)

### Nice-to-Have (Post-Evento)
8. GitHub Actions CI/CD
9. Versión en inglés
10. Blog post basado en la charla
11. Analytics de QR codes

### Future Iterations
12. Video tutorial
13. Workshop extendido
14. Colaboración con otros speakers

---

**Última actualización**: 2025-10-18
**Mantenedor**: [Tu nombre]
**Feedback**: [Tu contacto]
