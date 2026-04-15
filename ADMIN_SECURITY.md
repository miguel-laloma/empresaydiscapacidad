# 🔐 Seguridad del Panel Admin

## Contraseña Actual

```
Contraseña: empresa2026
```

## Acceso al Panel Admin

1. **URL:** `https://miguel-laloma.github.io/empresaydiscapacidad/admin-login/`
2. **Ingresa:** `empresa2026`
3. **Haz clic:** Acceder
4. Se abrirá el panel admin

---

## ¿Cómo Cambiar la Contraseña?

Para cambiar la contraseña:

1. **Abre el archivo:** `admin-login.md`
2. **Busca esta línea:**
   ```javascript
   const ADMIN_PASSWORD = "empresa2026";
   ```
3. **Cambia `"empresa2026"` por la contraseña que quieras:**
   ```javascript
   const ADMIN_PASSWORD = "micontraseña123";
   ```
4. **Guarda y haz commit a GitHub**
5. **En 1-2 minutos**, la nueva contraseña estará activa

**Ejemplo:**
```javascript
// Antigua
const ADMIN_PASSWORD = "empresa2026";

// Nueva
const ADMIN_PASSWORD = "miadmin2026secreto";
```

---

## Seguridad - Notas Importantes

### ✅ Ventajas de Este Sistema:

- ✓ Protege el panel admin de accesos no autorizados
- ✓ La contraseña se verifica localmente en el navegador
- ✓ No requiere base de datos ni servidor especial
- ✓ Funciona con Jekyll y GitHub Pages

### ⚠️ Limitaciones:

- ⚠️ La contraseña es visible en el código fuente (si alguien mira el HTML)
- ⚠️ La sesión se guarda localmente en el navegador (se pierde al cerrar/limpiar datos)
- ⚠️ No es un sistema de autenticación empresarial

### 🔒 Para Mayor Seguridad:

Si necesitas seguridad más avanzada, considera:
- Usar un servicio de autenticación como Firebase
- Implementar un servidor Node.js con autenticación
- Usar un CMS como Forestry.io o Netlify CMS

---

## Workflow Seguro

1. **Usuario accede** a `/admin-login/`
2. **Ingresa la contraseña** `empresa2026`
3. **Se guarda en sesión del navegador** (sessionStorage)
4. **Accede al panel admin** `/admin/`
5. **Puede crear artículos**
6. **Cierra sesión** con el botón "🚪 Cerrar Sesión"

---

## Cambiar a Contraseña Más Fuerte

Recomendación: Usa una contraseña fuerte que combinen:
- Letras mayúsculas
- Letras minúsculas
- Números
- Caracteres especiales

**Ejemplos:**
```
❌ Débil: admin123
✓ Fuerte: empresa2026EmprendedoresConDiscapacidad!
✓ Fuerte: Empresa-Discapacidad#2026-Admin
```

---

## ¿Qué Pasa si Olvidas la Contraseña?

1. Ve al repositorio en GitHub
2. Abre el archivo `admin-login.md`
3. Busca la línea de la contraseña
4. Cámbiala por una nueva
5. Hace commit
6. Listo, la nueva contraseña estará activa

---

## Cerrar Sesión

En el panel admin, haz clic en el botón **"🚪 Cerrar Sesión"** en la parte superior derecha.

Esto:
- ✓ Borra la sesión del navegador
- ✓ Te redirige a la página de login
- ✓ Requiere ingresar la contraseña nuevamente

---

¡Tu panel admin está seguro! 🔐
