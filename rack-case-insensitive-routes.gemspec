# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rack-case-insensitive-routes/version'

Gem::Specification.new do |gem|
  gem.name          = "rack-case-insensitive-routes"
  gem.version       = Rack::Case::Insensitive::Routes::VERSION
  gem.authors       = ["Adam Rogers"]
  gem.email         = ["electronicbattleweapon7@gmail.com"]
  gem.description   = %q{downcase all incoming paths to the router}
  gem.summary       = %q{downcase all incoming paths to the router}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_development_dependency 'rake'
end
