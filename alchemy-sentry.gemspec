require_relative "lib/alchemy/sentry/version"

Gem::Specification.new do |spec|
  spec.name = "alchemy-sentry"
  spec.version = Alchemy::Sentry::VERSION
  spec.authors = ["Thomas von Deyen"]
  spec.email = ["thomas@vondeyen.com"]
  spec.homepage = "https://alchemy-cms.com"
  spec.summary = "Alchemy Sentry error notifier."
  spec.description = "Adds a Sentry error notifier to AlchemyCMS."
  spec.license = "MIT"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/AlchemyCMS/alchemy-sentry"
  spec.metadata["changelog_uri"] = "https://github.com/AlchemyCMS/alchemy-sentry/tree/main/CHANGELOG.md"

  spec.files = Dir["{lib}/**/*", "LICENSE", "Rakefile", "README.md"]

  spec.add_dependency "alchemy_cms", ">= 7", "< 9"
  spec.add_dependency "sentry-ruby", "~> 6.0"
  spec.add_dependency "sentry-rails", "~> 6.0"

  spec.add_development_dependency "github_changelog_generator", "~> 1.16"
  spec.add_development_dependency "sqlite3", "~> 2.6"
  spec.add_development_dependency "rspec-rails", "~> 8.0"
end
