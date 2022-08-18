Gem::Specification.new do |gem|
  gem.name          = 'rack-utf8-http-headers'
  gem.version       = '1.0.0'
  gem.summary       = 'Rack::Utf8HttpHeaders is Rack middleware to convert HTTP headers to UTF-8.'
  gem.description   = gem.summary

  gem.authors       = ['Jon Wilkes']
  gem.email         = ['jon@pluckeye.net']
  gem.homepage      = 'https://github.com/plujon/rack-utf8-http-headers'
  gem.license       = 'MIT'

  gem.files         = `git ls-files`.split($/)
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ['lib']

  gem.add_dependency 'rack', '>= 1.0'
  gem.add_development_dependency 'rake'
  gem.add_development_dependency 'minitest'
end
