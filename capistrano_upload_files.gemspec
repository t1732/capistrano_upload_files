# $:.push File.expand_path("../lib", __FILE__)
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

# Maintain your gem's version:
require "capistrano_upload_files/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |spec|
  spec.name        = "capistrano_upload_files"
  spec.version     = CapistranoUploadFiles::VERSION
  spec.authors       = ['Takafumi Inamitsu']
  spec.email         = ['oo1732oo@gmail.com']
  spec.description   = %q{upload files for Capistrano 3.x}
  spec.summary       = %q{upload files for Capistrano 3.x}
  spec.homepage      = 'https://github.com/t1732/capistrano_upload_files'
  spec.license       = 'MIT'

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_dependency 'capistrano', '>= 3.1.0'

  spec.add_development_dependency 'bundler', '~> 1.3'
  spec.add_development_dependency 'rake'
end
