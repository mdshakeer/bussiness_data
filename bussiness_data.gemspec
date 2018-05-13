# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "bussiness_data/version"

Gem::Specification.new do |spec|
  spec.name          = "bussiness_data"
  spec.version       = BussinessData::VERSION
  spec.authors       = ["shakeer"]
  spec.email         = ["mdshakeer91@gmail.com"]

  spec.summary       = %q{Read bussiness data from the file and print it.}
  spec.description   = %q{Read bussiness data from the file and print it.}
  spec.homepage      = "https://github.com/mdshakeer"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.15"
  spec.add_development_dependency "rake", "~> 10.0"
end
