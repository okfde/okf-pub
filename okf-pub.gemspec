# frozen_string_literal: true

Gem::Specification.new do |spec|
  spec.name          = "okf-pub-theme"
  spec.version       = "0.2.20"
  spec.authors       = ["lislis"]
  spec.email         = ["mail@lislis.de"]

  spec.summary       = "A Jekyll theme for OKF DE publications"
  spec.homepage      = "https://github.com/okfde/okf-pub"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").select { |f| f.match(%r!^(assets|_layouts|_includes|_sass|LICENSE|README)!i) }

  spec.add_runtime_dependency "jekyll", "~> 3.8"
  spec.add_runtime_dependency "jekyll-feed", "~> 0.9"
  spec.add_runtime_dependency "jekyll-seo-tag", "~> 2.1"
  spec.add_runtime_dependency "jekyll-sitemap", "1.3.1"

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 12.0"
end
