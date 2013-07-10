# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'leo/version'

Gem::Specification.new do |spec|
  spec.name          = "leo"
  spec.version       = Leo::VERSION
  spec.authors       = ["marc"]
  spec.email         = ["marc@lamarciana.com"]
  spec.description   = %q{Meta package that includes leo-model}
  spec.summary       = %q{;eta package that includes leo-model}
  spec.homepage      = "https://github.com/laMarciana/leo"
  spec.license       = "GPL3"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "leo-model", "~> 0.0.1"

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
