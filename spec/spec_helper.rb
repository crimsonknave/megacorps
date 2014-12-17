require 'simplecov'
SimpleCov.start do
  add_filter 'spec'
end

require 'megacorps'
require 'rspec'

RSpec.configure do |config|
  config.color = true
  config.formatter = 'documentation'
end
