require "capybara/pdiff/version"
require 'capybara/pdiff/screenshot'
require 'capybara/pdiff/comparator'
require 'capybara/pdiff/rspec/matchers'

module Capybara
  module Pdiff

    def appearance_of(target)
      Screenshot.new(target)
    end

  end
end
