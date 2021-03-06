Gem::Specification.new do |spec|
  spec.name          = 'lita-onewheel-rolz'
  spec.version       = '0.0.6'
  spec.authors       = ['Andrew Kreps']
  spec.email         = ['andrew.kreps@gmail.com']
  spec.description   = %q{Lita interface to https://rolz.org}
  spec.summary       = %q{See above.}
  spec.homepage      = 'https://github.com/onewheelskyward/lita-onewheel-rolz'
  spec.license       = 'MIT'
  spec.metadata      = { 'lita_plugin_type' => 'handler'}

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_runtime_dependency 'lita', '~> 4.4'
  spec.add_runtime_dependency 'rest-client', '~> 2'

  spec.add_development_dependency 'bundler', '~> 2'
  # spec.add_development_dependency 'pry-byebug', '~> 3.1'
  spec.add_development_dependency 'rake', '~> 13'
  spec.add_development_dependency 'rack-test', '~> 0.6'
  spec.add_development_dependency 'rspec', '~> 3'
  spec.add_development_dependency 'simplecov', '~> 0.10'
  spec.add_development_dependency 'coveralls', '~> 0.8'
end
