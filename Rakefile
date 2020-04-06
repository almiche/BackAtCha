# frozen_string_literal: true

task :test do
  ruby 'test/back_at_cha_test.rb'
end

task :coverage do
  require 'simplecov'
  SimpleCov.command_name('Unit Tests')
  SimpleCov.start

  require_relative 'test/back_at_cha_test.rb'
end
