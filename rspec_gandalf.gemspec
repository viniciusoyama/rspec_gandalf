# -*- encoding: utf-8 -*-

Gem::Specification.new do |gem|
  gem.authors       = ["Vinícius Oyama"]
  gem.email         = ["vinicius.oyama@gmail.com"]
  gem.platform      = Gem::Platform::RUBY
  gem.description   = %q{Bad tests shall not pass!}
  gem.summary       = %q{One does not simply pass the tests!}
  gem.homepage      = "https://github.com/codus/rest_api"

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "rest_api"
  gem.require_paths = ["lib"]
  gem.version       = "0.1"

  gem.add_dependency('rspec', '~> 2.13')
end
