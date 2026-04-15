---
layout: default
title: Panel de Admin - Crear Artículos
permalink: /admin/
---

<div class="container admin-panel">
  <h1>📝 Panel de Admin - Crear Artículos</h1>
  
  <div class="admin-editor">
    <form id="articleForm" class="admin-form">
      
      <!-- Información del Artículo -->
      <fieldset>
        <legend>📋 Información del Artículo</legend>
        
        <div class="form-group">
          <label for="title">Título del Artículo *</label>
          <input 
            type="text" 
            id="title" 
            name="title" 
            placeholder="Ej: Mi primer artículo sobre inclusión laboral"
            required
          >
        </div>

        <div class="form-group">
          <label for="author">Autor *</label>
          <input 
            type="text" 
            id="author" 
            name="author" 
            placeholder="Tu nombre"
            required
          >
        </div>

        <div class="form-group">
          <label for="date">Fecha de Publicación *</label>
          <input 
            type="date" 
            id="date" 
            name="date"
            required
          >
          <small>Por defecto, hoy</small>
        </div>

        <div class="form-group">
          <label for="categories">Categorías (palabras clave)</label>
          <input 
            type="text" 
            id="categories" 
            name="categories" 
            placeholder="Ej: discapacidad integración laboral empresa"
          >
          <small>Separa con espacios</small>
        </div>
      </fieldset>

      <!-- Editor de Contenido -->
      <fieldset>
        <legend>✍️ Contenido del Artículo</legend>
        
        <div class="editor-toolbar">
          <button type="button" class="toolbar-btn" onclick="insertMarkdown('# ', '')">H1</button>
          <button type="button" class="toolbar-btn" onclick="insertMarkdown('## ', '')">H2</button>
          <button type="button" class="toolbar-btn" onclick="insertMarkdown('### ', '')">H3</button>
          <span class="toolbar-divider"></span>
          <button type="button" class="toolbar-btn" onclick="insertMarkdown('**', '**')">Negrita</button>
          <button type="button" class="toolbar-btn" onclick="insertMarkdown('*', '*')">Cursiva</button>
          <span class="toolbar-divider"></span>
          <button type="button" class="toolbar-btn" onclick="insertMarkdown('- ', '')">Viñeta</button>
          <button type="button" class="toolbar-btn" onclick="insertMarkdown('1. ', '')">Lista</button>
          <span class="toolbar-divider"></span>
          <button type="button" class="toolbar-btn" onclick="insertMarkdown('[', '](url)')">Enlace</button>
          <button type="button" class="toolbar-btn" onclick="insertMarkdown('> ', '')">Cita</button>
        </div>

        <div class="form-group">
          <label for="content">Contenido *</label>
          <textarea 
            id="content" 
            name="content" 
            placeholder="Escribe tu artículo aquí. Puedes usar los botones de arriba para dar formato."
            rows="15"
            required
          ></textarea>
          <small>💡 Consejo: Usa los botones para dar formato sin necesidad de conocer Markdown</small>
        </div>
      </fieldset>

      <!-- Botones -->
      <div class="form-actions">
        <button type="submit" class="btn btn-primary btn-large">📄 Generar Artículo</button>
        <button type="reset" class="btn btn-secondary btn-large">🗑️ Limpiar</button>
      </div>
    </form>
  </div>

  <!-- Vista Previa -->
  <div class="admin-preview" id="previewSection" style="display: none;">
    <h2>👁️ Vista Previa</h2>
    <div class="preview-content" id="preview"></div>
  </div>

  <!-- Código Generado -->
  <div class="admin-code" id="codeSection" style="display: none;">
    <h2>📋 Tu Artículo Generado</h2>
    
    <p class="info-box">
      ℹ️ <strong>Cómo publicar:</strong><br>
      1. Copia el código de abajo<br>
      2. Ve a la carpeta <code>_posts</code> en GitHub<br>
      3. Crea un nuevo archivo con el nombre: <code>YYYY-MM-DD-nombre.md</code><br>
      4. Pega el código y haz commit
    </p>

    <div class="code-output">
      <textarea id="generatedCode" readonly rows="20" class="code-area"></textarea>
    </div>

    <button onclick="copiarAlPortapapeles()" class="btn btn-primary btn-large">📋 Copiar Código</button>
    <button onclick="descargarArchivo()" class="btn btn-secondary btn-large">💾 Descargar Archivo</button>
  </div>

</div>

<style>
  .admin-panel {
    max-width: 1000px;
    margin: 2rem auto;
  }

  .admin-form {
    background-color: #f8f9fa;
    padding: 2rem;
    border-radius: 8px;
    margin-bottom: 2rem;
  }

  fieldset {
    border: 2px solid #dee2e6;
    border-radius: 6px;
    padding: 1.5rem;
    margin-bottom: 1.5rem;
  }

  legend {
    font-size: 1.1rem;
    font-weight: 600;
    color: #003d7a;
    padding: 0 0.5rem;
  }

  .form-group {
    margin-bottom: 1.5rem;
  }

  label {
    display: block;
    font-weight: 600;
    margin-bottom: 0.5rem;
    color: #1a1a1a;
  }

  input[type="text"],
  input[type="date"],
  textarea {
    width: 100%;
    padding: 0.75rem;
    border: 1px solid #dee2e6;
    border-radius: 4px;
    font-family: var(--font-family);
    font-size: 1rem;
    line-height: 1.5;
  }

  textarea {
    resize: vertical;
    font-family: 'Courier New', monospace;
  }

  input[type="text"]:focus,
  input[type="date"]:focus,
  textarea:focus {
    outline: none;
    border-color: #0056b3;
    box-shadow: 0 0 0 3px rgba(0, 86, 179, 0.1);
  }

  small {
    display: block;
    color: #555555;
    margin-top: 0.25rem;
  }

  .editor-toolbar {
    display: flex;
    flex-wrap: wrap;
    gap: 0.5rem;
    margin-bottom: 1rem;
    padding: 1rem;
    background-color: white;
    border: 1px solid #dee2e6;
    border-radius: 4px;
  }

  .toolbar-btn {
    padding: 0.5rem 0.75rem;
    border: 1px solid #dee2e6;
    background-color: white;
    cursor: pointer;
    border-radius: 4px;
    font-weight: 600;
    font-size: 0.9rem;
    transition: all 0.2s ease;
  }

  .toolbar-btn:hover {
    background-color: #0056b3;
    color: white;
    border-color: #0056b3;
  }

  .toolbar-divider {
    width: 1px;
    background-color: #dee2e6;
    margin: 0 0.25rem;
  }

  .form-actions {
    display: flex;
    gap: 1rem;
    margin-top: 2rem;
  }

  .btn-large {
    padding: 1rem 2rem;
    font-size: 1.1rem;
  }

  .admin-preview,
  .admin-code {
    background-color: #f8f9fa;
    padding: 2rem;
    border-radius: 8px;
    margin-bottom: 2rem;
    border: 2px solid #dee2e6;
  }

  .preview-content {
    background-color: white;
    padding: 2rem;
    border-radius: 6px;
    margin: 1rem 0;
    min-height: 200px;
    border: 1px solid #dee2e6;
  }

  .code-output {
    background-color: white;
    padding: 1rem;
    border-radius: 6px;
    margin: 1rem 0;
    border: 1px solid #dee2e6;
  }

  .code-area {
    width: 100%;
    font-family: 'Courier New', monospace;
    font-size: 0.9rem;
    background-color: #f5f5f5;
    color: #1a1a1a;
    border: none;
    border-radius: 4px;
    padding: 1rem;
  }

  .info-box {
    background-color: #e7f3ff;
    border-left: 4px solid #0056b3;
    padding: 1rem;
    border-radius: 4px;
    margin: 1rem 0;
    color: #003d7a;
  }

  .info-box code {
    background-color: #ffffff;
    padding: 0.2rem 0.4rem;
    border-radius: 3px;
  }

  @media (max-width: 768px) {
    .admin-form {
      padding: 1rem;
    }

    fieldset {
      padding: 1rem;
    }

    .editor-toolbar {
      gap: 0.25rem;
    }

    .toolbar-btn {
      padding: 0.4rem 0.5rem;
      font-size: 0.8rem;
    }

    .form-actions {
      flex-direction: column;
    }
  }
</style>

<script>
  // Establecer la fecha actual por defecto
  document.getElementById('date').valueAsDate = new Date();

  // Insertar Markdown en el textarea
  function insertMarkdown(before, after) {
    const textarea = document.getElementById('content');
    const start = textarea.selectionStart;
    const end = textarea.selectionEnd;
    const text = textarea.value;
    const selectedText = text.substring(start, end) || 'texto';
    
    const newText = text.substring(0, start) + before + selectedText + after + text.substring(end);
    textarea.value = newText;
    textarea.focus();
    textarea.selectionStart = start + before.length;
    textarea.selectionEnd = start + before.length + selectedText.length;
  }

  // Generar artículo
  document.getElementById('articleForm').addEventListener('submit', function(e) {
    e.preventDefault();
    
    const title = document.getElementById('title').value;
    const author = document.getElementById('author').value;
    const date = document.getElementById('date').value;
    const categories = document.getElementById('categories').value;
    const content = document.getElementById('content').value;
    
    // Generar código Markdown
    const frontmatter = `---
layout: post
title: "${title}"
date: ${date} 10:00:00 +0200
categories: ${categories || 'general'}
author: "${author}"
---

${content}`;
    
    // Mostrar preview
    const preview = document.getElementById('preview');
    preview.innerHTML = `<h2>${title}</h2><p><small>Por: ${author} | ${date}</small></p><div class="preview-content">${content.replace(/\n/g, '<br>')}</div>`;
    
    // Mostrar código
    document.getElementById('generatedCode').value = frontmatter;
    
    // Mostrar secciones
    document.getElementById('previewSection').style.display = 'block';
    document.getElementById('codeSection').style.display = 'block';
    
    // Scroll a la vista previa
    setTimeout(() => {
      document.getElementById('previewSection').scrollIntoView({ behavior: 'smooth' });
    }, 100);
  });

  // Copiar al portapapeles
  function copiarAlPortapapeles() {
    const codigo = document.getElementById('generatedCode');
    codigo.select();
    document.execCommand('copy');
    
    const btn = event.target;
    const textoOriginal = btn.textContent;
    btn.textContent = '✓ ¡Copiado!';
    setTimeout(() => {
      btn.textContent = textoOriginal;
    }, 2000);
  }

  // Descargar archivo
  function descargarArchivo() {
    const codigo = document.getElementById('generatedCode').value;
    const date = document.getElementById('date').value;
    const title = document.getElementById('title').value.toLowerCase().replace(/\s+/g, '-').replace(/[^a-z0-9-]/g, '');
    const filename = `${date}-${title}.md`;
    
    const element = document.createElement('a');
    element.setAttribute('href', 'data:text/plain;charset=utf-8,' + encodeURIComponent(codigo));
    element.setAttribute('download', filename);
    element.style.display = 'none';
    document.body.appendChild(element);
    element.click();
    document.body.removeChild(element);
  }
</script>
