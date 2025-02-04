require 'coveralls'
Coveralls.wear!

SimpleCov.formatters = [
  SimpleCov::Formatter::HTMLFormatter,
  Coveralls::SimpleCov::Formatter
]
SimpleCov.start do
  coverage_dir "tmp/coverage"
end

require 'airborne'
require 'stub_helper'

Airborne.configure do |config|
  config.base_url = 'http://www.example.com'
  config.include StubHelper
end

RSpec.configure do |config|
  config.example_status_persistence_file_path = "tmp/.rspec_status"
end

ExpectationNotMetError = RSpec::Expectations::ExpectationNotMetError
ExpectationError       = Airborne::ExpectationError
InvalidJsonError       = Airborne::InvalidJsonError
PathError              = Airborne::PathError
