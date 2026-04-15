# Empresa y Discapacidad - Web con Jekyll

Web completa lista para desplegar en GitHub Pages usando Jekyll. Proyecto centrado en la relación entre empresa, RSE y discapacidad.

## Estructura del Proyecto

```
empresa-discapacidad/
├── _config.yml              # Configuración de Jekyll
├── _layouts/
│   ├── default.html         # Layout base
│   ├── page.html            # Layout para páginas
│   └── post.html            # Layout para posts
├── _includes/
│   ├── navbar.html          # Barra de navegación
│   └── footer.html          # Pie de página
├── _posts/
│   ├── 2026-04-15-rse-discapacidad.md
│   └── 2026-04-10-integracion-laboral.md
├── assets/
│   └── css/
│       └── style.css        # Estilos CSS minimalistas
├── nosotros/
│   ├── aupa.md
│   └── empresa-discapacidad.md
├── blog/
│   └── index.md
├── index.md                 # Página de inicio
├── publicaciones.md         # Página de publicaciones
└── README.md                # Este archivo

```

## Cómo Desplegar en GitHub Pages

### 1. Preparación Inicial

```bash
# Clonar o crear un repositorio en GitHub
git clone https://github.com/tu-usuario/empresa-discapacidad.git
cd empresa-discapacidad
```

### 2. Configurar el Repositorio

1. Ve a **Settings > Pages**
2. Selecciona **Deploy from a branch**
3. Branch: `main` (o `master`)
4. Folder: `/ (root)`
5. Guarda

### 3. Personalizar `_config.yml`

```yaml
title: Empresa y Discapacidad
url: "https://tu-usuario.github.io"  # Para usuario
# O si es repo secundario:
# baseurl: "/empresa-discapacidad"
# url: "https://tu-usuario.github.io"
```

### 4. Hacer Push al Repositorio

```bash
git add .
git commit -m "Initial commit: web Jekyll lista para desplegar"
git push origin main
```

### 5. Esperar el Despliegue

- GitHub ejecutará Jekyll automáticamente
- Verifica el estado en **Settings > Pages > Deployments**
- Tu web estará disponible en 1-5 minutos

## Instalación Local para Desarrollo

### Requisitos

- Ruby 2.5.0 o superior
- Bundler

### Pasos

```bash
# 1. Instalar Jekyll (si no lo tienes)
gem install bundler jekyll

# 2. Navegar al directorio
cd empresa-discapacidad

# 3. Instalar dependencias
bundle install

# 4. Ejecutar servidor local
bundle exec jekyll serve

# 5. Acceder en navegador
# http://localhost:4000
```

El sitio se reconstruirá automáticamente al guardar cambios.

## Cómo Añadir Nuevos Posts

### 1. Crear archivo en `_posts/`

Nombre: `YYYY-MM-DD-titulo-del-post.md`

Ejemplo: `_posts/2026-05-20-nuevo-articulo.md`

### 2. Estructura básica del post

```markdown
---
layout: post
title: "Título del Artículo"
date: 2026-05-20
author: "Tu Nombre"
excerpt: "Breve descripción que aparecerá en el listado del blog"
categories: Categoría1 Categoría2
---

## Primer párrafo

Tu contenido en Markdown...

## Otro apartado

Más contenido...
```

### 3. Guardar y hacer commit

```bash
git add _posts/2026-05-20-nuevo-articulo.md
git commit -m "Nuevo post: [título]"
git push origin main
```

El post aparecerá automáticamente en `/blog/`

## Cómo Modificar Contenido

### Páginas Estáticas

Edita los archivos `.md` directamente:

- **Inicio:** `index.md`
- **Nosotros > Empresa y Discapacidad:** `nosotros/empresa-discapacidad.md`
- **Nosotros > AUPA:** `nosotros/aupa.md`
- **Blog:** `blog/index.md`
- **Publicaciones:** `publicaciones.md`

### Estilos

Modifica `assets/css/style.css` para personalizar:

- Colores (variables CSS en `:root`)
- Tipografía
- Espaciado
- Responsive design

### Navegación

Edita `_includes/navbar.html` para añadir/modificar enlaces

### Pie de página

Edita `_includes/footer.html` para cambiar información

## Características de la Web

### Diseño

- ✅ **Responsive:** Se adapta a móviles, tablets y desktop
- ✅ **Accesible:** WCAG 2.1 AA (contraste, navegación teclado, etc.)
- ✅ **Minimalista:** Carga rápida, diseño limpio
- ✅ **Moderno:** CSS con variables y media queries

### Contenido

- ✅ **Markdown:** Fácil de escribir y mantener
- ✅ **Blog:** Sistema de posts con fechas y categorías
- ✅ **Estructura clara:** Navegación intuitiva
- ✅ **Multiidioma ready:** Configurado en español (fácil adaptar)

### SEO

- ✅ **Jekyll-seo-tag:** Metaetiquetas automáticas
- ✅ **Sitemap:** Indexación en buscadores
- ✅ **Feed RSS:** Subscribirse a nuevos posts

### Seguridad

- ✅ **GitHub Pages:** Hosting seguro y confiable
- ✅ **HTTPS:** Cifrado automático
- ✅ **Sin base de datos:** Contenido estático

## Personalización Avanzada

### Añadir un Tema Diferente

Busca temas compatibles en [jekyllthemes.io](https://jekyllthemes.io) o [jekyll-themes.com](https://jekyll-themes.com)

Para usar un tema externo, modifica `_config.yml`:

```yaml
theme: nombre-tema
```

### Comentarios (Disqus)

Para habilitar comentarios en posts, añade a `_config.yml`:

```yaml
disqus:
  shortname: tu-disqus-shortname
```

Y modifica `_layouts/post.html` para incluir el iframe de Disqus.

### Google Analytics

Añade a `_config.yml`:

```yaml
google_analytics: UA-XXXXXXXXX-X
```

Jekyll-seo-tag lo incluirá automáticamente.

### Dominio Personalizado

1. Crea archivo `CNAME` en la raíz con tu dominio
2. Configura los registros DNS en tu proveedor
3. Habilita HTTPS en GitHub Pages settings

## Estructura de Carpetas Explicada

```
_layouts/       → Plantillas HTML que envuelven el contenido
_includes/      → Componentes reutilizables (navbar, footer)
_posts/         → Artículos del blog
assets/         → Recursos estáticos (CSS, JS)
nosotros/       → Páginas de la sección "Nosotros"
blog/           → Índice del blog
```

## Markdown: Guía Rápida

```markdown
# Título H1
## Título H2
### Título H3

**Texto en negrita**
*Texto en cursiva*

- Lista item 1
- Lista item 2
  - Subitem

1. Item numerado
2. Segundo item

[Enlace](https://ejemplo.com)

![Imagen](ruta/imagen.jpg)

> Cita

`código inline`

\`\`\`python
código en bloque
\`\`\`
```

## Solución de Problemas

### La web no se actualiza después de hacer push

- Espera 1-5 minutos
- Recarga la página (Ctrl+F5 o Cmd+Shift+R)
- Verifica el estado en GitHub Pages settings

### Los estilos no se cargan correctamente

- Asegúrate de que `url` en `_config.yml` es correcto
- Si usas `baseurl`, todos los enlaces deben usar `| relative_url`

### Los posts no aparecen

- Verifica que el nombre siga el formato `YYYY-MM-DD-titulo.md`
- Comprueba que el archivo tenga `layout: post` en el front matter
- Asegúrate de que la fecha no es futura

### Errores de compilación Jekyll

Ejecuta localmente para ver errores específicos:

```bash
bundle exec jekyll build --verbose
```

## Recursos y Referencias

- [Jekyll Documentation](https://jekyllrb.com/docs/)
- [GitHub Pages & Jekyll](https://docs.github.com/en/pages/setting-up-a-github-pages-site-with-jekyll)
- [Markdown Guide](https://www.markdownguide.org/)
- [WCAG Accessibility Guidelines](https://www.w3.org/WAI/WCAG21/quickref/)

## Licencia

Este proyecto está disponible bajo licencia **CC BY 4.0** (Creative Commons Atribución 4.0 Internacional).

Eres libre de:
- Usar y adaptar el código
- Distribuirlo
- Usarlo con fines comerciales

Con la condición de:
- Atribuir a Empresa y Discapacidad / AUPA

## Contacto y Colaboración

Para colaborar, sugerir mejoras o reportar problemas:

- 📧 Contacta con [AUPA](https://www.aupa.es)
- 🔗 Síguenos en redes sociales
- 💬 Abre un issue o contribuye en GitHub

---

**Versión:** 1.0  
**Última actualización:** 15 de abril de 2026  
**Generado con:** Jekyll + GitHub Pages
