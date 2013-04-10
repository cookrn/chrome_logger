# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'chrome_logger/version'

Gem::Specification.new do |spec|
  spec.name          = 'chrome_logger'
  spec.version       = ChromeLogger::VERSION
  spec.authors       = ['Ryan Cook']
  spec.email         = ['cookrn@gmail.com']
  spec.description   = %q{Ruby library that implements the Chrome Logger spec as Rack middleware}
  spec.summary       = %Q{#{ spec.name } v#{ spec.version }}
  spec.homepage      = 'https://github.com/cookrn/chrome_logger'
  spec.license       = 'MIT'

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_dependency 'multi_json' , '>= 1.3.0'

  spec.add_development_dependency 'minitest'
  spec.add_development_dependency 'rake'
end
