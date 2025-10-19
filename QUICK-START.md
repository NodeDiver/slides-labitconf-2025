# ⚡ Quick Start - Slides NWC LABITCONF

Referencia rápida para trabajar con el proyecto.

---

## 🚀 Comandos Principales

```bash
# Generar PPTX
./scripts/build.sh

# Editar contenido
nano content/slides-nwc.md

# Generar QR codes adicionales
source venv/bin/activate && python scripts/generate_qr.py

# Ver estructura del proyecto
tree -L 2 -I 'venv|__pycache__|template_extracted'

# Verificar peso del PPTX
ls -lh output/slides-nwc-labitconf.pptx
```

---

## 📂 Archivos Clave

| Archivo | Qué hace |
|---------|----------|
| `content/slides-nwc.md` | **EDITA AQUÍ** el contenido de las slides |
| `output/slides-nwc-labitconf.pptx` | PPTX generado (0.83 MB) |
| `scripts/build.sh` | Regenera el PPTX |
| `CHECKLIST-labitconf.md` | Lista pre-evento |
| `MEJORAS.md` | Ideas de mejoras |
| `content/sources.md` | Referencias y fuentes |

---

## ✅ Checklist Mínimo

Antes del evento, asegúrate de:

- [ ] Convertir diagramas .mmd a PNG
- [ ] Exportar PPTX a PDF backup
- [ ] Probar en proyector (1920x1080)
- [ ] Ensayar timing (15 min)
- [ ] Tener backup en USB

---

## 🔧 Solución de Problemas

### Error: "No module named 'pptx'"
```bash
source venv/bin/activate
pip install python-pptx pillow qrcode
```

### PPTX excede 15MB
- Comprimir imágenes en `assets/`
- Usar `pngquant` o `imagemagick`

### Diagramas no aparecen en PPTX
- Convertir .mmd a PNG primero
- Insertar manualmente en PowerPoint

---

## 📞 Ayuda

- **Docs completas**: README.md
- **Resumen del proyecto**: RESUMEN-FINAL.md
- **Mejoras**: MEJORAS.md
- **Pre-evento**: CHECKLIST-labitconf.md

---

**¡Todo listo! Edita `content/slides-nwc.md` y ejecuta `./scripts/build.sh`** 🎉
