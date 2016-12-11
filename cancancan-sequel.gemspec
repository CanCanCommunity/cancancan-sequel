# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'cancancan/sequel/version'

Gem::Specification.new do |spec|
  spec.name          = 'cancancan-sequel'
  spec.version       = CanCanCan::Sequel::VERSION
  spec.authors       = ['Alessandro Rodi']
  spec.email         = ['coorasse@gmail.com']
  spec.license       = 'MIT'

  spec.summary       = 'Sequel database adapter for CanCanCan.'
  spec.description   = "Implements CanCanCan's rule-based record fetching using Sequel."
  spec.homepage      = 'https://github.com/lowjoel/cancancan-sequel'

  spec.files         = `git ls-files -z`.split("\x0").
                       reject { |f| f.match(/^(test|spec|features)\//) }
  spec.bindir        = 'bin'
  spec.executables   = spec.files.grep(/^bin\//) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.11'
  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'rspec', '~> 3.0'
  spec.add_development_dependency 'simplecov'
  spec.add_development_dependency 'coveralls'
  spec.add_development_dependency 'codeclimate-test-reporter'

  spec.add_development_dependency 'sqlite3'

  spec.add_dependency 'activerecord', '>= 4.1'
  spec.add_dependency 'cancancan', '~> 1.15'
  spec.add_dependency 'sequel', '~> 3.48.0'
  # TODO: spec.add_dependency 'cancancan', '~> 2.0'
end
