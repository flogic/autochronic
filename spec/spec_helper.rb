$:.unshift(File.dirname(__FILE__) + '/../lib/')

require 'rubygems'
require 'mocha'

Spec::Runner.configure do |config|
  config.mock_with :mocha
end
