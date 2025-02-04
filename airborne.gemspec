require 'date'

Gem::Specification.new do |s|
  s.name = 'airborne'
  s.version = '0.3.7'
  s.summary = 'RSpec driven API testing framework'
  s.author = 'Placewise Development Team'
  s.email = 'mpc.dev@placewise.com'
  s.license = 'MIT'

  s.bindir = 'exe' # Not used, but definitely not 'bin'
  s.files = Dir['CHANGELOG.md', 'LICENSE', 'README.md', 'airborne.gemspec', 'lib/**/*']
  s.require_paths = ['lib']

  s.required_ruby_version = ">= 3.0.0"

  # @todo: Figure out
  s.add_dependency 'rspec', '~> 3.8'
  s.add_dependency 'rest-client', '< 3.0', '>= 2.0.2'
  s.add_dependency 'rack-test', '< 3', '>= 1.1.0'
  s.add_dependency 'rack'
  s.add_dependency 'activesupport'
end
