# frozen_string_literal: true

Gem::Specification.new do |s|
  s.name = 'BackAtCha'
  s.version = '0.0.6'
  s.summary = 'The uno-reverse card for DDOS attacks'
  s.description = 'Rack Middleware to hit those attackers back '
  s.authors     = ['Michel Chatmajian']
  s.email       = 'chamich196@hotmail.com'
  s.homepage    = 'http://rubygems.org/gems/BackAtCha'
  s.license = 'MIT'
  s.metadata = {
    "source_code_uri" => "https://github.com/almiche/BackAtCha",
    "changelog_uri" => "https://github.com/almiche/BackAtCha/blob/master/CHANGELOG.md"
  }
  s.files = Dir["{lib}/**/*", "Rakefile", "README.md", "CHANGELOG.md"]

  s.add_development_dependency 'mocha'
  s.add_development_dependency 'rake'
  s.add_development_dependency 'rubocop'
  s.add_development_dependency 'simplecov'
  s.add_development_dependency 'test-unit'
  s.add_development_dependency 'sinatra'
end
