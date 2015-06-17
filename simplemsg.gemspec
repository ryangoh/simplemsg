# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'simplemsg/version'

Gem::Specification.new do |spec|
  spec.name          = "simplemsg"
  spec.version       = Simplemsg::VERSION
  spec.authors       = ["Ryan Goh"]
  spec.email         = ["gohengkeat89@gmail.com"]

  spec.summary       = %q{This is a simple print message gem}
  spec.description   = %q{It will print a message for you}
  spec.homepage      = "https://github.com/ryangoh/simplemsg"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org by setting 'allowed_push_host', or
  # delete this section to allow pushing this gem to any host.
  #if spec.respond_to?(:metadata)
  #  spec.metadata['allowed_push_host'] = "T'http://mygemserver.com'"
  #else
  #  raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  #end

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  #spec.bindir        = "exe"
  spec.executables   = ["simplemsg"]
  #spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.required_ruby_version = ">= 2.2.2"

  #spec.add_dependency "highline", '~> 1.7.2'
  spec.add_dependency "thor" , '~> 0.19.1'

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
  #spec.add_development_dependency "rspec", '~> 3.3.0'

end
