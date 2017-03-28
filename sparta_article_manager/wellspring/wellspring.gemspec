$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "wellspring/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "wellspring"
  s.version     = Wellspring::VERSION
  s.authors     = ["Cyril Mupakile"]
  s.email       = ["cmupakile@spartaglobal.co"]
  s.homepage    = "TODO"
  s.summary     = "TODO: Summary of Wellspring."
  s.description = "TODO: Description of Wellspring."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency "rails", "~> 5.0.2"

  s.add_development_dependency "pg"
end
