require "bundler/setup"

load "rails/tasks/statistics.rake"

require "bundler/gem_tasks"

require "rake/testtask"

Rake::TestTask.new(:test) do |t|
  t.libs << "test"
  t.pattern = "test/**/*_test.rb"
  t.verbose = false
end

task default: :test

require "github_changelog_generator/task"
require "alchemy/sentry/version"

namespace :changelog do
  GitHubChangelogGenerator::RakeTask.new :update do |config|
    config.user = "AlchemyCMS"
    config.project = "alchemy-sentry"
    config.future_release = "v#{Alchemy::Sentry::VERSION}"
  end
end
