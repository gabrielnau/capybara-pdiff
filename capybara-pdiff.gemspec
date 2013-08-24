# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'capybara/pdiff/version'

Gem::Specification.new do |spec|
  spec.name          = "capybara-pdiff"
  spec.version       = Capybara::Pdiff::VERSION
  spec.authors       = ["Gabriel Nau"]
  spec.email         = ["gabriel.nau@gmail.com"]
  spec.description   = %q{TODO: Write a gem description}
  spec.summary       = %q{TODO: Write a gem summary}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "capybara"
  spec.add_development_dependency "pry"
  spec.add_development_dependency "poltergeist"
  # TODO : remove
  spec.add_development_dependency "chunky_png"
end
