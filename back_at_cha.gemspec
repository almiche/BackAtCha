# frozen_string_literal: true

Gem::Specification.new do |s|
  s.name = 'BackAtCha'
  s.version = '0.0.1'
  s.summary = 'The uno-reverse card for DDOS attacks'
  s.description = 'Rack Middleware to hit those attackers back '
  s.authors     = ['Michel Chatmajian']
  s.email       = 'chamich196@hotmail.com'
  s.homepage    =
    'http://rubygems.org/gems/quotifier'
  s.license = 'MIT'
  s.metadata = {
    source_code_uri: 'https://github.com/almiche/quotifier_as_middleware',
    changelog_uri: 'https://github.com/almiche/quotifier_as_middleware/blob/master/CHANGELOG.md'
  }
  s.files = [
    'Gemfile',
    'VERSION',
    'lib/back_at_cha.rb'
  ]
  # s.require_paths = ["lib"]
  s.add_dependency('faraday')
  s.add_dependency('json')
end
