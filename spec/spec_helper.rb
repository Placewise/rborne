require 'coveralls'
Coveralls.wear!
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
