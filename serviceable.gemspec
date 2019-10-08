$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "serviceable/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "serviceable"
  s.version     = Serviceable::VERSION
  s.authors     = ["Shawn Catanzarite"]
  s.email       = ["me@shawncatz.com"]
  s.homepage    = "https://github.com/shawncatz/serviceable"
  s.summary     = "common service implementation"
  s.description = "common service implementation"
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 4.2.11.1"
  s.add_dependency "xml-simple", "~> 1.1.4"
  s.add_dependency "rest-client", "~> 1.7.2"

  s.add_development_dependency "sqlite3"
end
