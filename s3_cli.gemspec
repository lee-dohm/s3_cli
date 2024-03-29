lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require 's3_cli/version'

Gem::Specification.new do |spec|
  spec.name          = 's3_cli'
  spec.version       = S3Cli::VERSION
  spec.authors       = ['Lee Dohm']
  spec.email         = ['lee@lee-dohm.com']
  spec.summary       = 'Creates an s3 command-line utility for manipulating S3 objects.'
  spec.homepage      = ''
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(/^bin\//) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(/^(test|spec|features)\//)
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.6'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rubocop'
end
