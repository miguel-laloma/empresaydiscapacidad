# 🚀 GUÍA RÁPIDA - Editar la Web

## ¿Qué quieres hacer?

### 1️⃣ Agregar un artículo al blog

1. Ve a `_posts/`
2. Copia `PLANTILLA-articulo.md`
3. Renómbralo: `YYYY-MM-DD-tu-titulo.md` (ejemplo: `2026-05-01-nuevo-articulo.md`)
4. Edita el contenido
5. Haz commit y push

```bash
git add .
git commit -m "Agregar nuevo artículo: tu título"
git push origin main
```

### 2️⃣ Editar la página de inicio

- Archivo: `index.md`
- Edita el contenido entre los `</section>`
- Haz commit y push

### 3️⃣ Editar "Sobre Nosotros"

- AUPA: `nosotros/aupa.md`
- Empresa y Discapacidad: `nosotros/empresa-discapacidad.md`
- Haz commit y push

### 4️⃣ Editar publicaciones

- Archivo: `publicaciones.md`
- Haz commit y push

### 5️⃣ Cambiar la configuración general

- Archivo: `_config.yml`
- Modifica `title`, `description`, etc.
- Haz commit y push

---

## 📚 Formato Markdown Rápido

```markdown
# Título
## Subtítulo
**Negrita** | *Cursiva*
- Viñeta
- Viñeta

1. Número 1
2. Número 2

[Enlace](https://url.com)
```

---

## ⏱ Después de hacer push:

- GitHub compila la web automáticamente (1-2 minutos)
- Tu sitio se actualiza en: **https://miguel-laloma.github.io/empresaydiscapacidad/**

---

## 📖 Documentación Completa

Para más detalles, lee: `GUIA_EDICION.md`

---

¡Ya estás listo para editar! 🎉
