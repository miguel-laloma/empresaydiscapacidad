# Instrucciones de Despliegue - Empresa y Discapacidad

## 📋 Requisitos Previos

- [ ] Cuenta en GitHub (gratuita)
- [ ] Git instalado en tu ordenador
- [ ] (Opcional) Ruby + Jekyll para pruebas locales

---

## 🚀 OPCIÓN A: Despliegue Directo en GitHub Pages (Recomendado)

### Paso 1: Crear Repositorio en GitHub

1. Ve a https://github.com/new
2. **Repository name:** `empresa-discapacidad`
3. Tipo: **Public**
4. **NO** inicialices con README (ya lo tenemos)
5. Click en **Create repository**

### Paso 2: Clonar y Configurar

```bash
# Reemplaza "tu-usuario" con tu usuario de GitHub
git clone https://github.com/tu-usuario/empresa-discapacidad.git
cd empresa-discapacidad

# Copiar todos los archivos de esta carpeta aquí
# (Si ya descargaste el ZIP, extrae aquí)
```

### Paso 3: Hacer Push

```bash
git add .
git commit -m "Initial commit: web Jekyll lista para desplegar"
git push -u origin main
```

### Paso 4: Activar GitHub Pages

1. Abre https://github.com/tu-usuario/empresa-discapacidad
2. Ve a **Settings** (esquina superior derecha)
3. En el menú lateral: **Pages**
4. Bajo "Build and deployment":
   - **Source:** Deploy from a branch
   - **Branch:** main
   - **Folder:** / (root)
5. Click **Save**

### Paso 5: Esperar el Despliegue

- GitHub generará los archivos automáticamente (1-5 minutos)
- Tu web estará en: **https://tu-usuario.github.io/empresa-discapacidad/**
- Verifica el estado en Settings > Deployments

✅ **¡Listo!** Tu web está en línea.

---

## 🎯 OPCIÓN B: Despliegue en Dominio Personal

Si quieres que sea el sitio principal (sin `/empresa-discapacidad/`):

### Cambios necesarios:

1. **Nombre del repo:** `tu-usuario.github.io`
2. **En `_config.yml`:** Cambiar `baseurl: ""` (dejar vacío)
3. Tu web estará en: `https://tu-usuario.github.io`

---

## 💻 OPCIÓN C: Despliegue Local (Desarrollo)

Para probar antes de hacer push:

```bash
# 1. Instalar dependencias
cd empresa-discapacidad
bash setup.sh

# 2. Ejecutar servidor local
bundle exec jekyll serve

# 3. Abrir http://localhost:4000 en el navegador

# 4. Los cambios se actualizan automáticamente
```

---

## ✏️ Cómo Editar Después del Despliegue

### Modificar Páginas

```bash
cd empresa-discapacidad

# Editar cualquier archivo .md
nano index.md                              # Inicio
nano nosotros/empresa-discapacidad.md      # Nosotros > Empresa y Discapacidad
nano nosotros/aupa.md                      # Nosotros > AUPA
nano publicaciones.md                      # Publicaciones
nano blog/index.md                         # Blog

# Guardar cambios
git add .
git commit -m "Actualizar contenido"
git push
```

### Añadir Nuevo Post

```bash
# Crear archivo con fecha
nano _posts/2026-05-20-nuevo-post.md

# Contenido mínimo:
---
layout: post
title: "Mi Nuevo Artículo"
date: 2026-05-20
author: "Tu Nombre"
excerpt: "Breve descripción"
---

Tu contenido aquí...

# Guardar y hacer push
git add _posts/2026-05-20-nuevo-post.md
git commit -m "Nuevo post: Mi Nuevo Artículo"
git push
```

### Cambiar Colores

Editar `assets/css/style.css`:

```css
:root {
  --color-primary: #003d7a;      /* Cambia este código de color */
  --color-accent: #28a745;       /* Y este */
  /* ... más variables */
}
```

Luego:
```bash
git add assets/css/style.css
git commit -m "Cambiar colores del diseño"
git push
```

### Actualizar Configuración

Editar `_config.yml`:

```yaml
title: Mi Nuevo Título
description: Nueva descripción
```

---

## 🐛 Solución de Problemas

### "Veo una página de error 404"

- Verifica que el repo sea **PUBLIC**
- Espera 2-5 minutos (GitHub necesita tiempo para generar)
- En Settings > Pages, verifica que muestre "Your site is published"

### "Los cambios no se ven"

- Puede tardar 1-2 minutos
- Haz Ctrl+Shift+R (reload sin cache)
- Verifica que hiciste `git push` correctamente

### "Los estilos se ven rotos"

- Verifica que `baseurl` en `_config.yml` es correcto:
  - Si es el repo principal: `baseurl: ""`
  - Si es secundario: `baseurl: "/empresa-discapacidad"`
- Haz Ctrl+Shift+R para limpiar cache

### "Error al hacer git push"

Puede ser por autenticación. Usa SSH:

```bash
# Generar clave SSH (si no la tienes)
ssh-keygen -t ed25519 -C "tu@email.com"

# Agregar la clave pública a GitHub
# https://github.com/settings/keys

# Luego hacer push funciona:
git push
```

---

## 🎨 Personalización Común

### Cambiar Nombre de la Organización

1. Editar `_config.yml`:
   ```yaml
   title: Tu Nombre de Organización
   ```

2. Editar `_includes/navbar.html`:
   ```html
   <a href="...">Tu Nombre</a>
   ```

3. Editar `_includes/footer.html`:
   ```html
   <p>&copy; 2026 Tu Nombre. Todos los derechos reservados.</p>
   ```

### Cambiar Enlace de AUPA

En `_includes/footer.html` y otras páginas:

```html
<a href="https://tu-enlace.com">Tu Organización</a>
```

### Añadir Más Secciones de Navegación

1. Editar `_includes/navbar.html`
2. Añadir nuevo item en el menú
3. Crear archivo `.md` correspondiente

---

## 📊 Monitorizar

### Ver Estadísticas de Despliegue

GitHub > Settings > Pages > Deployments

### Ver Errores de Compilación

Si el sitio no se actualiza:

1. Ve a **Settings > Pages**
2. Busca "Deployments" o "Actions"
3. Haz click en el último despliegue
4. Verifica si hay errores

---

## 🔐 Seguridad

La web está automáticamente:

- ✅ Protegida con HTTPS
- ✅ Alojada en servidores de GitHub (confiables)
- ✅ Bajo control de versiones (histórico completo)
- ✅ Sin exposición de información sensible

---

## 📈 Próximos Pasos Recomendados

1. ✅ Desplegar en GitHub Pages
2. ✅ Probar que todo funciona
3. ✅ Añadir más contenido en los posts
4. ✅ Personalizar colores y textos
5. ✅ Habilitar Google Analytics (opcional)
6. ✅ Configurar dominio personalizado (opcional)

---

## 💡 Tips Útiles

- **Editar en línea en GitHub:** Haz click en cualquier archivo y luego en el botón de editar (lápiz)
- **Preview de cambios:** Git permite ver cambios antes de hacer commit
- **Automatización:** GitHub puede ejecutar tareas automáticamente con Actions
- **Backup:** Todo está en GitHub, siempre tienes historial

---

## 📞 Soporte

Si tienes problemas:

1. Revisa el [README.md](README.md) completo
2. Consulta la [Documentación de Jekyll](https://jekyllrb.com/docs/)
3. Ve a [GitHub Pages Docs](https://docs.github.com/en/pages)

---

**¡Éxito con tu web!** 🎉
