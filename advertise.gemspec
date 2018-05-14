
lib = File.expand_path("lib", __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "advertise/version"

Gem::Specification.new do |spec|
  spec.name          = "advertise"
  spec.version       = Advertise::VERSION
  spec.authors       = ["Akhilesh"]
  spec.email         = ["basics.aki@gmail.com"]

  spec.summary       = "Write a short summary, because RubyGems requires one."
  spec.description   = "Write a longer description or delete this line."
  spec.homepage      = "http://www.rubygems.com"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata["allowed_push_host"] = "http://www.rubygems.com"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.files = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "faraday", "~> 0.15.1"
  spec.add_dependency "hashie", "~> 3.5.7"
  spec.add_dependency "config", "~> 1.7.0"
  spec.add_development_dependency "pry", "~> 0.11.0"

  spec.add_development_dependency "sub-inspector","~> 0.1.2"
  spec.add_development_dependency "simplecov", "~> 0.16.1"

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
