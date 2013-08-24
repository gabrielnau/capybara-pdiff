require 'rubygems'
require 'bundler/setup'
require 'capybara/rspec'
require 'capybara/pdiff'

RSpec.configure do |config|
  config.include Capybara::Pdiff, :type => :feature
end

require 'capybara/poltergeist'
Capybara.javascript_driver = :poltergeist

STATIC_EXAMPLE = {
  baseline: File.expand_path("fixtures/static/foo.png", File.dirname(__FILE__)),
  consistent_element: File.expand_path("fixtures/static/foo_copy.png", File.dirname(__FILE__)),
  changed_element: File.expand_path("fixtures/static/bar.png", File.dirname(__FILE__)),
}