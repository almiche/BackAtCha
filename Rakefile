# frozen_string_literal: true

task(default: %w[test])

task :test do
  ruby 'test/back_at_cha_test.rb'
end

task :coverage do
  require 'simplecov'
  SimpleCov.command_name('Unit Tests')
  SimpleCov.start

  require_relative 'test/back_at_cha_test.rb'
  ruby 'test/back_at_cha_test.rb'
end
