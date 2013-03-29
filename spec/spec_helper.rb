require 'rubygems'
require 'bundler/setup'
require 'rspec_gandalf' # and any other gems you need

RSpec.configure do |config|
  # some (optional) config here
  config.include(RSpecGandalf::Matchers)  
end