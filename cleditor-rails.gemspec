# -*- encoding: utf-8 -*-
require File.expand_path('../lib/cleditor-rails/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Ivan Novosad"]
  gem.email         = ["ivan.novosad@gmail.com"]
  gem.description   = %q{CLEeditor for rails}
  gem.summary       = %q{CLEeditor for rails}
  gem.homepage      = ""

  gem.files         = Dir["{lib,vendor}/**/*"] + ["LICENSE", "README.md"]
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "cleditor-rails"
  gem.require_paths = ["lib"]
  gem.version       = Cleditor::Rails::VERSION
  gem.add_dependency "railties", ">= 3.1"
end
