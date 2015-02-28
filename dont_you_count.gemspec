# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'dont_you_count/version'

Gem::Specification.new do |gem|
  gem.name          = ""
  gem.version       = DontYouCount::VERSION
  gem.authors       = ["pawurb"]
  gem.email         = ["p.urbanek89@gmail.com"]
  gem.summary       = %q{Disable active admin count queries for selected tables}
  gem.description   = %q{Disable active admin count queries for selected tables}
  gem.homepage      = "http://github.com/pawurb/dont_you_count"
  gem.files         = `git ls-files`.split("\n")
  gem.executables   = []
  gem.test_files    = gem.files.grep(%r{^(spec)/})
  gem.require_paths = ["lib"]
  gem.license       = "MIT"
  gem.add_development_dependency "activeadmin"
  gem.add_development_dependency "kaminari"
end
