# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'ip_locator/version'

Gem::Specification.new do |spec|
  spec.name          = "ip_locator"
  spec.version       = IpLocator::VERSION
  spec.authors       = ["Jed Luhmann"]
  spec.email         = ["jedluhmann@yahoo.com.com"]

  spec.summary       = %q{Gem to wrap geoip API. The API returns location data derived from an ip address.}
  spec.description   = %q{Gem to wrap geoip API. The API returns location data derived from an ip address.}
  spec.homepage      = "TODO: Put your gem's website or public repo URL here."
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org by setting 'allowed_push_host', or
  # delete this section to allow pushing this gem to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "dotenv"
  spec.add_development_dependency "pry"
  spec.add_dependency "faraday"
  spec.add_dependency "faraday_middleware"
  spec.add_dependency "hashie"
  # spec.add_dependency "json"
end
