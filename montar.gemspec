require_relative "lib/montar/version"

Gem::Specification.new do |spec|
  spec.name        = "montar"
  spec.version     = Montar::VERSION
  spec.authors     = ["Jon Allured"]
  spec.email       = ["jon@jonallured.com"]
  spec.homepage    = "https://github.com/artsy/montar"
  spec.summary     = "Tools for migrating from Mongoid to ActiveRecord."
  spec.description = "Tools for migrating from Mongoid to ActiveRecord."
  spec.license     = "MIT"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/artsy/montar"
  spec.metadata["changelog_uri"] = "https://github.com/artsy/montar/CHANGELOG"

  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]
  end

  spec.add_dependency "rails", ">= 7.0.6"
end
