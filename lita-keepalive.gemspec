# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = "lita-keepalive"
  spec.version       = '0.0.1'
  spec.authors       = ["Mikko Kokkonen"]
  spec.email         = ["mikko@mikian.com"]
  spec.summary       = %q{Lita Plugin for keeping Heroku instance alive}
  spec.description   = %q{
    Keepalive plugin for Lita and heroku - pings its own route periodically to keep Heroku instance alive.
  }
  spec.homepage      = "http://github.com/mikian/lita-keepalive"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "lita", "~> 4.0"

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
end
