# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'diesel/version'

Gem::Specification.new do |spec|
  spec.name          = "diesel-api-dsl"
  spec.version       = Diesel::VERSION
  spec.authors       = ["Calvin Yu"]
  spec.email         = ["me@sourcebender.com"]
  spec.description   = %q{Create API Clients From an DSL}
  spec.summary       = %q{Create API Clients From an DSL}
  spec.homepage      = "http://github.com/cyu/diesel"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake", "~> 10.1"

  spec.add_dependency "httparty", "~> 0.12"
end
