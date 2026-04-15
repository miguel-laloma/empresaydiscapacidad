---
layout: default
title: Login - Panel de Admin
permalink: /admin-login/
---

<div class="container admin-login">
  <div class="login-box">
    <h1>🔐 Panel de Admin</h1>
    <p class="subtitle">Ingresa la contraseña para acceder</p>

    <form id="loginForm" class="login-form">
      <div class="form-group">
        <label for="password">Contraseña:</label>
        <input 
          type="password" 
          id="password" 
          name="password"
          placeholder="Ingresa la contraseña"
          autocomplete="off"
          required
        >
      </div>

      <button type="submit" class="btn btn-primary btn-large">Acceder</button>
    </form>

    <div id="errorMessage" class="error-message" style="display: none;"></div>
  </div>
</div>

<style>
  .admin-login {
    display: flex;
    align-items: center;
    justify-content: center;
    min-height: 60vh;
  }

  .login-box {
    background-color: #f8f9fa;
    padding: 3rem;
    border-radius: 8px;
    border: 2px solid #dee2e6;
    max-width: 400px;
    width: 100%;
    text-align: center;
  }

  .login-box h1 {
    color: #003d7a;
    margin-top: 0;
    margin-bottom: 0.5rem;
  }

  .subtitle {
    color: #555555;
    margin-bottom: 2rem;
  }

  .login-form {
    display: flex;
    flex-direction: column;
  }

  .form-group {
    margin-bottom: 1.5rem;
  }

  .form-group label {
    display: block;
    font-weight: 600;
    margin-bottom: 0.5rem;
    color: #1a1a1a;
    text-align: left;
  }

  .form-group input {
    width: 100%;
    padding: 0.75rem;
    border: 1px solid #dee2e6;
    border-radius: 4px;
    font-size: 1rem;
    font-family: var(--font-family);
  }

  .form-group input:focus {
    outline: none;
    border-color: #0056b3;
    box-shadow: 0 0 0 3px rgba(0, 86, 179, 0.1);
  }

  .error-message {
    background-color: #f8d7da;
    color: #721c24;
    padding: 1rem;
    border-radius: 4px;
    margin-top: 1rem;
    border: 1px solid #f5c6cb;
  }

  .btn-large {
    padding: 0.75rem 1.5rem;
    font-size: 1rem;
  }

  @media (max-width: 600px) {
    .login-box {
      padding: 2rem;
    }
  }
</style>

<script>
  // La contraseña (en producción, usar mejor un sistema de autenticación)
  const ADMIN_PASSWORD = "empresa2026";

  document.getElementById('loginForm').addEventListener('submit', function(e) {
    e.preventDefault();

    const password = document.getElementById('password').value;
    const errorMessage = document.getElementById('errorMessage');

    if (password === ADMIN_PASSWORD) {
      // Guardar en sessionStorage (sesión del navegador)
      sessionStorage.setItem('adminAuthenticated', 'true');
      // Redirigir al panel admin
      window.location.href = "{{ '/admin/' | relative_url }}";
    } else {
      errorMessage.textContent = '❌ Contraseña incorrecta. Intenta de nuevo.';
      errorMessage.style.display = 'block';
      document.getElementById('password').value = '';
      document.getElementById('password').focus();
    }
  });
</script>
