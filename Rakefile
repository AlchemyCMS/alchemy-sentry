require "bundler/setup"
require "bundler/gem_tasks"

require "rspec/core"
require "rspec/core/rake_task"

RSpec::Core::RakeTask.new(:spec)

task default: :spec

require "github_changelog_generator/task"
require "alchemy/sentry/version"

namespace :changelog do
  GitHubChangelogGenerator::RakeTask.new :update do |config|
    config.user = "AlchemyCMS"
    config.project = "alchemy-sentry"
    config.future_release = "v#{Alchemy::Sentry::VERSION}"
  end
end
