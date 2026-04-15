#!/bin/bash

# Script de setup rápido para Empresa y Discapacidad
# Uso: bash setup.sh

echo "================================"
echo "Setup - Empresa y Discapacidad"
echo "================================"
echo ""

# Verificar si Ruby está instalado
if ! command -v ruby &> /dev/null; then
    echo "❌ Ruby no está instalado. Instálalo primero:"
    echo "   macOS: brew install ruby"
    echo "   Linux: sudo apt-get install ruby-full"
    exit 1
fi

echo "✅ Ruby detectado"
echo ""

# Instalar Bundler si no lo tiene
if ! command -v bundle &> /dev/null; then
    echo "📦 Instalando Bundler..."
    gem install bundler
fi

echo "✅ Bundler instalado"
echo ""

# Instalar dependencias
echo "📦 Instalando dependencias Jekyll..."
bundle install

echo ""
echo "================================"
echo "✅ Setup completado"
echo "================================"
echo ""
echo "Para ejecutar localmente:"
echo "  bundle exec jekyll serve"
echo ""
echo "Luego accede a: http://localhost:4000"
echo ""
echo "Para desplegar en GitHub Pages:"
echo "  git add ."
echo "  git commit -m 'Initial commit'"
echo "  git push origin main"
echo ""
