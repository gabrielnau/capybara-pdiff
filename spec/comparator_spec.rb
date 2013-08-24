require File.expand_path("spec_helper.rb", File.dirname(__FILE__))

describe Capybara::Pdiff::Comparator do

  describe "#matches?" do

    it "returns false if images are different" do
      comparator = Capybara::Pdiff::Comparator.new STATIC_EXAMPLE[:baseline],
                                                   STATIC_EXAMPLE[:changed_element]
      expect(comparator.matches?).to be_false
    end

    it "returns true if images are identical" do
      comparator = Capybara::Pdiff::Comparator.new STATIC_EXAMPLE[:baseline],
                                                   STATIC_EXAMPLE[:consistent_element]
      expect(comparator.matches?).to be_true
    end

  end

end