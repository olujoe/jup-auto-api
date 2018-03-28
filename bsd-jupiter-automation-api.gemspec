# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require_relative 'lib/bsd-jupiter-automation-api/version'

Gem::Specification.new do |spec|
  spec.name          = 'bsd-jupiter-automation-api'
  spec.version       = BsdJupiterAutomationApi::VERSION
  spec.authors       = ['kelvininukbbc']
  spec.email         = ['kelvin.inuk@bbc.co.uk']

  spec.summary       = 'Ruby client library for interfacing with Broadcast Systems Jupiter application'

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency 'bundler', '~> 1.14'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec', '~> 3.0'
  spec.add_development_dependency 'sikuli', '0.3.0'
end
