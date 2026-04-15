# Quick Start Guide - Empresa y Discapacidad

## 🚀 Despliegue en 5 minutos

### Opción 1: GitHub Pages (Recomendado)

```bash
# 1. Crear repo vacío en GitHub
# Visita: https://github.com/new
# Nombre: empresa-discapacidad
# Tipo: Public

# 2. Clonar este proyecto
git clone https://github.com/tu-usuario/empresa-discapacidad.git
cd empresa-discapacidad

# 3. Verificar y hacer push
git add .
git commit -m "Initial commit: web lista para desplegar"
git push origin main

# ✅ Tu web estará en: https://tu-usuario.github.io/empresa-discapacidad/
```

### Opción 2: Ejecutar localmente

```bash
# 1. Instalar dependencias
bash setup.sh

# 2. Ejecutar servidor
bundle exec jekyll serve

# 3. Acceder a http://localhost:4000
```

---

## 📝 Contenido Incluido

### ✅ Páginas Funcionales

- **Inicio** - Presentación del proyecto
- **Nosotros > AUPA** - Historia y objetivos de AUPA
- **Nosotros > Empresa y Discapacidad** - Misión y enfoque
- **Blog** - Listado de artículos
- **Publicaciones** - Espacio para recursos

### ✅ Posts de Ejemplo

1. "RSE y Discapacidad: Un Compromiso Corporativo Necesario"
2. "Integración Laboral de Personas con Discapacidad: Oportunidades"

### ✅ Características Técnicas

- Diseño totalmente responsive
- Accesibilidad WCAG 2.1 AA
- Estilos minimalistas y modernos
- Navegación intuitiva con dropdowns
- Footer informativo
- Feed RSS automático
- Sitemap para SEO

---

## 🎨 Personalización Rápida

### Cambiar colores

Editar `/assets/css/style.css`:

```css
:root {
  --color-primary: #003d7a;      /* Azul oscuro */
  --color-secondary: #0056b3;    /* Azul */
  --color-accent: #28a745;       /* Verde */
  /* ...más variables */
}
```

### Editar nombre y descripción

Editar `_config.yml`:

```yaml
title: Tu Título
description: Tu descripción
url: https://tu-dominio.com
```

### Modificar contacto

Editar `_includes/footer.html` - busca la sección de contacto

---

## 📚 Próximos Pasos

1. ✅ Verificar que la web funciona localmente
2. ✅ Hacer push a GitHub
3. ✅ Ir a Settings > Pages y confirmar despliegue
4. ✅ Compartir el enlace
5. ✅ Añadir más posts en `_posts/`
6. ✅ Actualizar contenido en archivos `.md`

---

## 🔧 Resolver Problemas Comunes

**"La web no aparece en GitHub Pages"**
- Verifica que el repo sea público
- Va a Settings > Pages y revisa el estado del despliegue

**"Los estilos no cargan correctamente"**
- Asegúrate que `url` en `_config.yml` es correcto
- Si usas subdirectorio, actualiza `baseurl`

**"No puedo hacer push"**
- Genera una clave SSH: https://docs.github.com/en/authentication/connecting-to-github-with-ssh
- O usa HTTPS con token de acceso personal

---

## 📖 Más Información

- Ver `README.md` para guía completa
- Jekyll docs: https://jekyllrb.com/docs/
- GitHub Pages: https://pages.github.com/

---

¡Tu web está lista! 🎉
