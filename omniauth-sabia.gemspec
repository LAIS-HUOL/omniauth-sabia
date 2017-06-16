# -*- encoding: utf-8 -*-
require File.expand_path('../lib/omniauth-sabia/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Guilherme Portela"]
  gem.email         = ["hi@portela.top"]
  gem.description   = %q{Official OmniAuth strategy for Sabiá.}
  gem.summary       = %q{Official OmniAuth strategy for Sabiá.}
  gem.homepage      = "https://github.com/LAIS-HUOL/omniauth-sabia"
  gem.license       = "MIT"

  gem.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  gem.files         = `git ls-files`.split("\n")
  gem.name          = "omniauth-sabia"
  gem.require_paths = ["lib"]
  gem.version       = OmniAuth::Sabia::VERSION

  gem.add_dependency 'omniauth', '~> 1.6'
  gem.add_dependency 'omniauth-oauth2', '>= 1.4.0', '< 2.0'
end
