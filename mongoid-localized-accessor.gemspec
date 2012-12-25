# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'mongoid-localized-accessor/version'

Gem::Specification.new do |gem|
  gem.name          = "mongoid-localized-accessor"
  gem.version       = Mongoid::Localized::Accessor::VERSION
  gem.authors       = ["Le Duc Duy"]
  gem.email         = ["me@duy.kr"]
  gem.description   = "Localized accessor for mongoid"
  gem.summary       = "Localized accessor for mongoid"
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]
  gem.add_dependency 'mongoid'
end
