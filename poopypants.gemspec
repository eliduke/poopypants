# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'poopypants/version'

Gem::Specification.new do |spec|
  spec.name          = "poopypants"
  spec.version       = Poopypants::VERSION
  spec.authors       = ["Eli Duke"]
  spec.email         = ["elimduke@gmail.com"]

  spec.summary       = %q{Professor Poopypants' Name-Change-o-Gem}
  spec.description   = %q{If you love silly names, you're gonna love Professor Poopypants' Name-Change-o-Gem.}
  spec.homepage      = "https://github.com/eliduke/poopypants"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end

  spec.bindir        = "bin"
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.13"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
