# 📝 Guía para Editar Contenido y Agregar Artículos

Esta guía te explica cómo editar el contenido de la web y agregar nuevos artículos al blog sin complicaciones.

## Estructura de la Web

```
empresa-discapacidad/
├── index.md                          # Página de inicio
├── publicaciones.md                  # Página de publicaciones
├── _posts/                           # Artículos del blog
│   ├── 2026-04-10-integracion-laboral.md
│   └── 2026-04-15-rse-discapacidad.md
├── nosotros/                         # Páginas "Sobre nosotros"
│   ├── aupa.md
│   └── empresa-discapacidad.md
├── assets/                           # Recursos (CSS, imágenes)
│   └── css/
│       └── style.css
└── _config.yml                       # Configuración del sitio
```

---

## 1. Editar Páginas Principales

Las páginas principales se encuentran en la raíz del proyecto o en carpetas específicas.

### Ejemplo: Editar la página de inicio

**Archivo:** `index.md`

```markdown
---
layout: default
title: Inicio
permalink: /
---

<section class="hero">
  <div class="container">
    <h1>Empresa y Discapacidad</h1>
    <p>Tu texto aquí</p>
  </div>
</section>

<section class="container main-section">
  <h2>Sección principal</h2>
  <p>Contenido aquí...</p>
</section>
```

**Lo que significa cada parte:**
- `---` delimita el "frontmatter" (metadatos)
- `layout: default` - Usa el diseño predeterminado
- `title: Inicio` - Título que aparece en el navegador
- `permalink: /` - URL de la página
- El contenido en HTML/Markdown va debajo

---

## 2. Agregar un Nuevo Artículo al Blog

### Paso 1: Crear el archivo

Los archivos del blog van en la carpeta `_posts/` con este nombre:

```
YYYY-MM-DD-nombre-del-articulo.md
```

**Ejemplo:**
```
2026-05-01-nuevo-articulo.md
```

### Paso 2: Agregar el contenido

Abre el archivo y copia esta plantilla:

```markdown
---
layout: post
title: "Título del Artículo"
date: 2026-05-01 10:00:00 +0200
categories: discapacidad integración
author: "Tu Nombre"
---

Tu contenido aquí usando Markdown...

## Subtítulo

Párrafo con más contenido.

- Punto 1
- Punto 2
- Punto 3
```

**Explicación del frontmatter:**
- `layout: post` - Tipo de contenido
- `title` - Título del artículo
- `date` - Fecha y hora de publicación
- `categories` - Palabras clave (separadas por espacio)
- `author` - Autor del artículo

### Paso 3: Formato Markdown

Usa Markdown para dar formato:

```markdown
# Título grande (H1)
## Subtítulo (H2)
### Sub-subtítulo (H3)

**Texto en negrita**
*Texto en cursiva*

- Lista con viñetas
- Elemento 2

1. Lista numerada
2. Elemento 2

[Enlace](https://ejemplo.com)

> Cita importante
```

---

## 3. Editar Páginas de "Nosotros"

Los archivos están en `nosotros/`:

- `nosotros/aupa.md` - Información sobre AUPA
- `nosotros/empresa-discapacidad.md` - Información sobre el proyecto

Siguen el mismo formato que las páginas principales.

---

## 4. Cambiar la Configuración General

**Archivo:** `_config.yml`

```yaml
title: Empresa y Discapacidad
description: Tu descripción aquí
url: "https://miguel-laloma.github.io"
baseurl: "/empresaydiscapacidad"
```

---

## 5. Workflow: Cómo Publicar Cambios

Una vez hayas editado los archivos en local, sigue estos pasos:

### Con Git (Recomendado)

```bash
# 1. Ve a la carpeta del proyecto
cd /ruta/a/empresa-discapacidad

# 2. Ver cambios
git status

# 3. Agregar cambios
git add .

# 4. Hacer commit con un mensaje
git commit -m "Descripción del cambio: ej. Agregar nuevo artículo sobre inclusión"

# 5. Enviar a GitHub
git push origin main
```

### Sin Git (Solo si usas editor visual en GitHub)

1. Ve a tu repositorio en GitHub.com
2. Navega a la carpeta `_posts/`
3. Haz clic en "Add file" > "Create new file"
4. Copia el contenido Markdown
5. Haz commit directamente desde GitHub

---

## 6. Errores Comunes y Soluciones

### Error: El artículo no aparece en el blog

**Causas:**
- La fecha en el nombre es futura (Jekyll solo publica fechas pasadas)
- Falta el frontmatter (las líneas `---`)
- Typo en el nombre del archivo

**Solución:**
```
✓ Correcto: 2026-04-01-articulo.md
✗ Incorrecto: 2026-05-31-articulo.md (fecha futura)
```

### Error: El formato no se ve bien

**Causa:** Faltan espacios en blanco en Markdown

**Solución:**
```markdown
✓ Correcto:
# Título

Párrafo

✗ Incorrecto:
# Título
Párrafo (sin línea en blanco)
```

### Error: Los enlaces no funcionan

Usa rutas relativas con `{{ site.baseurl }}`:

```markdown
[Inicio]({{ site.baseurl }}/)
[Blog]({{ site.baseurl }}/blog/)
[AUPA]({{ site.baseurl }}/nosotros/aupa.html)
```

---

## 7. Estilos Personalizados en Markdown

Puedes usar HTML dentro de Markdown:

```html
<section class="container">
  <h2>Título</h2>
  <p>Contenido con estilos CSS personalizados</p>
</section>

<a href="{{ site.baseurl }}/blog/" class="btn btn-primary">Ver Blog</a>
```

---

## 8. Agregar Imágenes

```markdown
![Descripción de la imagen]({{ site.baseurl }}/assets/images/nombre.jpg)
```

**Nota:** Primero debes agregar la imagen a `assets/images/` (crea la carpeta si no existe)

---

## ⏱ Proceso después de hacer push:

1. **Haces commit y push** desde tu computadora
2. **GitHub recibe los cambios** en 10 segundos
3. **GitHub Pages compila el sitio** (1-2 minutos)
4. **Tu web se actualiza** automáticamente en: `https://miguel-laloma.github.io/empresaydiscapacidad/`

---

## 📚 Recursos Útiles

- [Markdown Cheatsheet](https://www.markdownguide.org/cheat-sheet/)
- [Jekyll Docs](https://jekyllrb.com/docs/)
- [YAML Syntax](https://yaml.org/spec/1.2/spec.html)

---

## ❓ ¿Preguntas?

Si algo no funciona:
1. Revisa que el formato Markdown sea correcto
2. Verifica que el frontmatter esté entre `---`
3. Comprueba que no haya espacios o caracteres especiales en los nombres de archivos
4. Consulta los ejemplos existentes en `_posts/` y `nosotros/`

¡Todo listo para editar la web! 🎉
