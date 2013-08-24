require File.expand_path("../spec_helper.rb", File.dirname(__FILE__))

describe Capybara::Pdiff::RSpecMatchers do
  include Capybara::Pdiff::RSpecMatchers

  describe "stay_the_same matcher" do

    pending "gives proper description"
    pending "finds the baseline image automatically"
    pending "passes if current target is identical to baseline"
    pending "fails if current target is identical to baseline"

  end

  describe "be_the_same_as matcher" do

    it "gives proper description" do
      matcher = be_the_same_as('#foo')
      matcher.description.should == "be the same as the given image"
    end

    context "with should" do
      it "passes if images are identical" do
        STATIC_EXAMPLE[:baseline].should be_the_same_as(STATIC_EXAMPLE[:consistent_element])
      end

      it "fails if images are different" do
        expect do
          STATIC_EXAMPLE[:baseline].should be_the_same_as(STATIC_EXAMPLE[:changed_element])
        end.to raise_error(%r(expected to visualy match #{STATIC_EXAMPLE[:baseline].inspect}))
      end
    end

    context "with should_not" do
      it "passes if images are different" do
        STATIC_EXAMPLE[:baseline].should_not be_the_same_as(STATIC_EXAMPLE[:changed_element])
      end

      it "fails if images are identical" do
        expect do
          STATIC_EXAMPLE[:baseline].should_not be_the_same_as(STATIC_EXAMPLE[:consistent_element])
        end.to raise_error(%r(expected to visualy match #{STATIC_EXAMPLE[:baseline].inspect}))
      end
    end

  end

end