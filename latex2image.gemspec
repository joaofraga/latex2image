# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'latex2image/version'

Gem::Specification.new do |spec|
  spec.name          = "latex2image"
  spec.version       = Latex2Image::VERSION
  spec.authors       = ["Joao Fraga"]
  spec.email         = ["jgfraga@gmail.com"]

  spec.summary       = %q{Generate PNG images from Latex formules}
  spec.description   = %q{Generate PNG images from Latex formules on your ruby projects}
  spec.homepage      = "https://github.com/joaofraga/latex2image"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency 'rspec', '~> 0'
  spec.add_development_dependency "pry", '~> 0'
end
