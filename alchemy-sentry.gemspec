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

  spec.add_dependency "alchemy_cms", ">= 4.6.7", "< 7"
  spec.add_dependency "sentry-ruby", "~> 5.0"
  spec.add_dependency "sentry-rails", "~> 5.0"
end
