require File.expand_path("spec_helper.rb", File.dirname(__FILE__))

describe Capybara::Pdiff, type: :feature, js: true do

  describe "#appearance_of" do

    pending "returns the path to the screenshot"
    pending "deletes the screenshot at the end of the test"

    context "when targetting a whole page" do
      # requires capybara's page object
    end

    context "when targetting an element" do
      pending "that is not found, then an error is raised"
      pending "and there is several occurrences of the target, then an error is raised"
    end

  end

end