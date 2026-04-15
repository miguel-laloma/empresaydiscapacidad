---
layout: page
title: Blog
permalink: /blog/
description: Artículos sobre discapacidad, empresa y RSE
---

## Blog

Bienvenido a nuestro espacio de análisis, reflexiones y noticias sobre la integración de la discapacidad en el mundo empresarial.

### Últimos artículos

{% for post in site.posts limit:10 %}
<article class="post-card">
  <h3>
    <a href="{{ post.url | relative_url }}">{{ post.title }}</a>
  </h3>
  <div class="post-meta">
    <time datetime="{{ post.date | date_to_xmlschema }}">
      {{ post.date | date: "%d de %B de %Y" }}
    </time>
    {% if post.author %}
    <span class="post-author">Por {{ post.author }}</span>
    {% endif %}
  </div>
  
  {% if post.excerpt %}
  <p class="post-excerpt">{{ post.excerpt | strip_html }}</p>
  {% endif %}
  
  <a href="{{ post.url | relative_url }}" class="post-read-more">Leer más →</a>
</article>
{% endfor %}

{% if site.posts.size == 0 %}
<p style="text-align: center; color: var(--color-text-light); padding: 2rem 0;">
  <em>Aún no hay publicaciones. ¡Vuelve pronto!</em>
</p>
{% endif %}
