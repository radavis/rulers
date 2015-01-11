# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rulers/version'

Gem::Specification.new do |gem|
  gem.name          = "rulers"
  gem.version       = Rulers::VERSION
  gem.authors       = ["Richard Davis"]
  gem.email         = ["rdavis.bacs@gmail.com"]
  gem.summary       = %q{A rack-based web framework}
  gem.description   = %q{A rack-based web framework, with tons of cool shit.}
  gem.homepage      = "https://github.com/radavis/rulers"
  gem.license       = "MIT"

  gem.files         = `git ls-files -z`.split("\x0")
  gem.executables   = gem.files.grep(%r{^bin/}) { |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_development_dependency "bundler", "~> 1.7"
  gem.add_development_dependency "rake", "~> 10.0"
  # gem.add_development_dependency "rspec"
  # gem.add_runtime_dependency "rest-client"
  gem.add_runtime_dependency "rack"
end
