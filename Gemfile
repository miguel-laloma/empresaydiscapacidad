# Gemfile para Empresa y Discapacidad

source "https://rubygems.org"

gem "jekyll", "~> 4.3.0"

# Tema (minima está incluido por defecto en GitHub Pages)
gem "minima", "~> 2.5"

# Plugins recomendados (usados por GitHub Pages)
group :jekyll_plugins do
  gem "jekyll-feed", "~> 0.12"
  gem "jekyll-seo-tag", "~> 2.8"
  gem "jekyll-sitemap", "~> 1.4"
end

# Windows y JRuby incluyen zonas horarias por defecto
platforms :mingw, :x64_mingw, :mswin, :jruby do
  gem "tzinfo", ">= 1", "< 3"
  gem "tzinfo-data"
end

# Performance-booster for watching directories on Windows
gem "wdm", "~> 0.1.1", :platforms => [:mingw, :x64_mingw, :mswin]

# Lock `http_parser.rb` to `v0.6.x` en JRuby builds
gem "http_parser.rb", "~> 0.6.0", :platforms => [:jruby]
