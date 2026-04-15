# 🔐 Panel de Admin - Guía Completa

## ¿Qué es el Panel de Admin?

Es una herramienta visual para crear artículos para el blog **sin necesidad de conocer Markdown ni programación**. Funciona como WordPress o Medium, pero directamente en tu web.

---

## 🚀 Cómo Acceder

1. Ve a tu web: `https://miguel-laloma.github.io/empresaydiscapacidad/admin/`
2. O haz clic en el enlace **"🔐 Panel Admin"** en el pie de página

---

## 📝 Crear un Artículo (Paso a Paso)

### Paso 1: Rellena la Información Básica

En la sección **"📋 Información del Artículo"**, completa:

- **Título del Artículo**: El título que verán en el blog
  - Ejemplo: *"Cómo integrar personas con discapacidad en la empresa"*

- **Autor**: Tu nombre
  - Ejemplo: *"María García"*

- **Fecha de Publicación**: Hoy por defecto (puedes cambiarla si quieres)

- **Categorías** (opcional): Palabras clave separadas por espacios
  - Ejemplo: *"discapacidad integración laboral empresa inclusión"*

### Paso 2: Escribe el Contenido

En la sección **"✍️ Contenido del Artículo"**, tienes dos opciones:

#### Opción A: Escribe directamente (como en Word)
```
Hola, hoy quiero hablar sobre...

La inclusión laboral es importante porque...

Algunos beneficios son:
- Diversidad en el equipo
- Perspectivas diferentes
- Cumplir normativa
```

#### Opción B: Usa los botones de formato (como en Word)

Los botones de la barra de herramientas te permiten:

| Botón | Uso | Ejemplo |
|-------|-----|---------|
| **H1** | Título grande | # Mi Título |
| **H2** | Subtítulo | ## Sección |
| **H3** | Sub-subtítulo | ### Detalle |
| **Negrita** | Resaltar texto | **importante** |
| **Cursiva** | Énfasis | *destacado* |
| **Viñeta** | Lista de puntos | - Punto 1 |
| **Lista** | Lista numerada | 1. Punto 1 |
| **Enlace** | Agregar URL | [Texto](url) |
| **Cita** | Destacar una frase | > Cita importante |

### Paso 3: Vista Previa

Haz clic en **"📄 Generar Artículo"** y verás:

1. **👁️ Vista Previa** - Cómo se verá el artículo en el blog
2. **📋 Código Generado** - El archivo listo para copiar

---

## 📋 Publicar el Artículo

Una vez generado, tienes dos opciones:

### Opción A: Copiar y Pegar en GitHub (5 minutos)

1. Haz clic en **"📋 Copiar Código"**
2. Ve a GitHub: https://github.com/miguel-laloma/empresaydiscapacidad
3. Abre la carpeta `_posts/`
4. Haz clic en **"Add file"** → **"Create new file"**
5. Nombre del archivo: `YYYY-MM-DD-nombre.md`
   - Ejemplo: `2026-04-20-integracion-laboral.md`
   - La fecha debe ser menor o igual a hoy
6. Pega el código (Ctrl+V o Cmd+V)
7. Haz clic en **"Commit changes"**
8. En 1-2 minutos, tu artículo aparecerá en el blog

### Opción B: Descargar el Archivo (5 minutos)

1. Haz clic en **"💾 Descargar Archivo"**
2. El archivo se descargarán a tu ordenador
3. Sube a GitHub:
   - Ve a la carpeta `_posts/`
   - Haz clic en **"Upload files"**
   - Selecciona el archivo descargado
   - Haz clic en **"Commit changes"**

---

## 💡 Consejos y Trucos

### Estructura Recomendada para un Artículo

```
## Introducción

Explica de qué trata el artículo en 2-3 párrafos.

## Desarrollo Principal

Aquí va el contenido más importante.

### Subsección

Puedes dividir en partes si es muy largo.

## Conclusión

Resume los puntos clave.
```

### Formato Markdown Básico (opcional)

Si no quieres usar los botones, puedes escribir así:

```
# Título Grande

## Subtítulo

**Texto en negrita**
*Texto en cursiva*

- Punto 1
- Punto 2

1. Primero
2. Segundo

[Enlace a Google](https://google.com)

> Una cita importante del artículo
```

### Errores Comunes

| Problema | Solución |
|----------|----------|
| "El artículo no aparece" | La fecha debe ser hoy o anterior |
| "El formato está raro" | Asegúrate de dejar líneas en blanco entre párrafos |
| "Veo caracteres raros" | Probablemente el archivo no se copió bien, intenta de nuevo |

---

## 🎯 Ejemplo Completo

### En el Panel Admin llenas:

- **Título**: "Empresas que contratan personas con discapacidad"
- **Autor**: "Juan López"
- **Fecha**: 2026-04-20 (hoy)
- **Categorías**: "discapacidad empleo inclusión"
- **Contenido**:

```
## Introducción

En España, muchas empresas están apostando por la inclusión de personas con discapacidad.

## Empresas Destacadas

### Tech Companies

Grandes empresas tecnológicas como:
- Google
- Microsoft
- Amazon

### Empresas Locales

Muchas pymes también lo hacen:
1. Empresa A
2. Empresa B

## Conclusión

La inclusión es beneficiosa para todos.
```

### El código generado será:

```markdown
---
layout: post
title: "Empresas que contratan personas con discapacidad"
date: 2026-04-20 10:00:00 +0200
categories: discapacidad empleo inclusión
author: "Juan López"
---

## Introducción

En España, muchas empresas están apostando por la inclusión de personas con discapacidad.

## Empresas Destacadas

### Tech Companies

Grandes empresas tecnológicas como:
- Google
- Microsoft
- Amazon

### Empresas Locales

Muchas pymes también lo hacen:
1. Empresa A
2. Empresa B

## Conclusión

La inclusión es beneficiosa para todos.
```

---

## ⏱️ Proceso Después de Publicar

1. **Haces commit en GitHub** ✅
2. **GitHub Pages compila** (1-2 minutos) ⏳
3. **Tu artículo aparece en el blog** 🎉
4. Los usuarios ven el artículo en: `https://miguel-laloma.github.io/empresaydiscapacidad/blog/`

---

## 🔒 Seguridad

El panel admin es **público**. Cualquiera puede verlo, pero:
- No puede publicar directamente (necesita acceso a GitHub)
- Solo genera el código que tú copias
- Tú controlas qué se publica

Si quieres hacer que el panel sea **privado**, avísame y lo configuro.

---

## ❓ Preguntas Frecuentes

### ¿Puedo editar artículos después de publicarlos?

Sí, pero debes hacerlo en GitHub directamente.

### ¿Puedo usar HTML en los artículos?

Sí, el panel acepta HTML. Ejemplo:

```html
<div style="background: blue; padding: 10px;">
  <p>Mi contenido especial</p>
</div>
```

### ¿Qué pasa si me equivoco?

No pasa nada, puedes:
1. Editar el archivo en GitHub
2. O eliminar y crear uno nuevo

### ¿Puedo agregar imágenes?

Sí, pero necesitas subirlas a la carpeta `assets/images/` primero. Luego incluye:

```markdown
![Descripción](https://miguel-laloma.github.io/empresaydiscapacidad/assets/images/mi-imagen.jpg)
```

---

## 📞 Soporte

Si algo no funciona:

1. Verifica que el título y contenido no estén vacíos
2. Comprueba que el nombre del archivo sea correcto: `YYYY-MM-DD-nombre.md`
3. Asegúrate de que la fecha sea hoy o anterior
4. Intenta copiar el código de nuevo

---

¡Listo! Ahora puedes crear artículos como en WordPress pero en tu propia web. 🎉
