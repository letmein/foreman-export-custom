# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |gem|
  gem.name        = 'foreman-export-custom'
  gem.version     = '0.0.1'
  gem.date        = '2012-12-24'
  gem.summary     = 'Foreman custom template exporter'
  gem.description = 'Foreman custom template exporter'
  gem.authors     = ['Yuriy Kharchenko']
  gem.email       = 'yuri.kharchenko@gmail.com'
  gem.homepage    = 'https://github.com/letmein/foreman-export-custom'

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ['lib']

  gem.add_dependency 'foreman'
end
