# frozen_string_literal: true

require "bundler/gem_tasks"
require "rspec/core/rake_task"

RSpec::Core::RakeTask.new(:spec)

require "rubocop/rake_task"

RuboCop::RakeTask.new(:rubocop, [:options]) do |t, args|
  t.options = %w[--format progress] + args.to_a
end

task default: %i[spec rubocop]
