require File.expand_path("spec_helper.rb", File.dirname(__FILE__))

describe Capybara::Pdiff, type: :feature, js: true do

  pending "should use Pdiff gem as default"
  pending "should use TODO baseline strategy as default"

  context "before the tests run" do

    pending "when the current driver doesn't support screenshots then it should raise an error"
    pending "when baseline directory strategy isn't defined then it should raise an error"
    pending "it should be available inside a feature test only"

  end

  context "given an existing image baseline" do

    before do
      # generate baseline image
    end

    pending "when the current element doesn't match the baseline then the test should fail"
    pending "when the current element doesn't match the baseline then the test should pass"
    pending "when current page doesn't match the baseline then the test should fail"
    pending "when current page does match the baseline then the test should pass"
    pending "when the target element is not found then an error should be raised"
    pending "when there is several occurences of the target element then an error should be raised"

  end

  context "given no existing baseline image" do

    pending "then an error should be raised, explaining how to generate a baseline"

  end

end