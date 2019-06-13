lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "rack_graphql/version"

Gem::Specification.new do |spec|
  spec.name          = "rack-graphql"
  spec.version       = RackGraphql::VERSION
  spec.authors       = ["Krzysztof Knapik", "RenoFi Engineering Team"]
  spec.email         = ["knapo@knapo.net", "engineering@renofi.com"]

  spec.summary       = %q{Rack middleware for graphql ruby services.}
  spec.homepage      = "https://github.com/RenoFi/rack-graphql"
  spec.license       = "MIT"

  spec.metadata["homepage_uri"] = "https://github.com/RenoFi/rack-graphql"
  spec.metadata["source_code_uri"] = "https://github.com/RenoFi/rack-graphql"

  spec.files         = Dir.chdir(__dir__) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "multi_json"
  spec.add_dependency "rack", ">= 2.0.0"
  spec.add_dependency "graphql", ">= 1.9.0"

  spec.add_development_dependency "bundler", "~> 2.0"
  spec.add_development_dependency "pry", "~> 0.12"
  spec.add_development_dependency "rack-test", "~> 1.1"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
