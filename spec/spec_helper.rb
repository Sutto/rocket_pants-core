ENV["RAILS_ENV"] ||= 'test'
$LOAD_PATH.unshift Pathname(__FILE__).dirname.dirname.join("lib").to_s

require 'bundler/setup'
Bundler.setup
Bundler.require :default, :test

require 'rocket_pants/core'

Dir[Pathname(__FILE__).dirname.join("support/**/*.rb")].each { |f| require f }

RSpec.configure do |config|
  config.mock_with :rr
end