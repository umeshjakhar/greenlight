# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = "bn-ldap-authentication"
  spec.version       = "0.1.4"
  spec.authors       = ["shawn-higgins1"]
  spec.email         = ["23224097+shawn-higgins1@users.noreply.github.com"]

  spec.summary       = "An ruby gem for authenticating users with ldap"
  spec .description   = "A ruby gem for using ldap to authenticate greenlight users"
  spec.homepage      = "https://github.com/blindsidenetworks/bn-ldap-authentication"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.11"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"

  spec.add_runtime_dependency 'net-ldap', '~> 0'
end
