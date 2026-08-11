# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'fastlane-sirp/version'

Gem::Specification.new do |spec|
  spec.name          = 'fastlane-sirp'
  spec.version       = SIRP::VERSION
  spec.authors       = ['Glenn Rempe', 'lamikae', 'snatchev', 'joshdholtz', 'iBotPeaches']
  spec.email         = ['me@joshholtz.com']

  spec.required_ruby_version = '>= 3.0.0'
  spec.summary       = 'Secure (interoperable) Remote Password Auth (SRP-6a)'
  spec.description   = <<-EOF
    A Ruby implementation of the Secure Remote Password protocol (SRP-6a).
    SiRP is a cryptographically strong authentication protocol for
    password-based, mutual authentication over an insecure network connection.
  EOF

  spec.homepage      = 'https://github.com/grempe/sirp'

  # http://spdx.org/licenses/BSD-3-Clause.html
  spec.license       = 'BSD-3-Clause'
  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']
end
