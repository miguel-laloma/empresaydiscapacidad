# Solución de GitHub Pages - Guía de Configuración

## Problema Identificado

El sitio web no se mostraba correctamente en GitHub Pages porque:

1. **CSS y estilos no se cargaban** - Los archivos compilados no estaban siendo servidos
2. **Enlaces 404** - Las páginas internas no estaban disponibles
3. **`_site/` en .gitignore** - El directorio compilado no se estaba subiendo a GitHub

## Soluciones Aplicadas

### 1. Incluir `_site/` en el repositorio
- Modificado `.gitignore` para permitir que el directorio `_site/` se suba a GitHub
- Esto asegura que los archivos compilados por Jekyll estén disponibles en el repositorio

### 2. Crear archivo CNAME
- Agregado archivo `CNAME` con el dominio personalizado `empresa-discapacidad.org`
- GitHub Pages lo utiliza para configurar correctamente el dominio personalizado

### 3. Verificar configuración de GitHub Pages
Asegúrate de hacer lo siguiente en el repositorio de GitHub:

1. Ve a **Settings > Pages**
2. En **Source**, selecciona:
   - **Branch**: `main`
   - **Folder**: `/ (root)` o `_site/` (ambas funcionarán, pero `root` es más flexible)
3. Verifica que el dominio personalizado sea `empresa-discapacidad.org`
4. Asegúrate de que "Enforce HTTPS" esté habilitado

## Cambios CSS de Accesibilidad

También se implementaron mejoras de accesibilidad web:

- **Color de enlaces visitados**: Cambió de morado a azul oscuro para mejor contraste
- **Textos grises**: Aumentado el contraste en descripciones, citas y metadatos
- **Fondo blanco**: Confirmado que el fondo es blanco (criterios WCAG AA)

## Próximos Pasos

1. **Esperar a que GitHub Pages se actualice** (puede tomar 1-2 minutos)
2. Visitar `https://empresa-discapacidad.org`
3. Limpiar caché del navegador si es necesario (Ctrl+Shift+Delete o Cmd+Shift+Delete)
4. Verificar que los CSS y todas las páginas se carguen correctamente

## Nota Importante

- `_site/` se regenera cada vez que se hace push a `main`
- Los cambios en fuentes (`.md`, `assets/css/style.css`, etc.) se compilarán automáticamente
- Es recomendable mantener `_site/` incluido para garantizar que GitHub Pages siempre tenga los últimos cambios compilados
