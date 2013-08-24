module Capybara
  module Pdiff
    module RSpecMatchers

      class StayTheSame

        def matches?(actual)
          # should lookup automatically for the baseline
          # then compare actual and baseline
        end

        def description
          "stay the same as the matching baseline (TODO: give the reference here)"
        end

      end

      def stay_the_same
        StayTheSame.new
      end


      class BeTheSameAs

        def initialize(expected)
          @expected = expected
        end

        def matches?(actual)
          diff = Comparator.new(actual, @expected)
          diff.matches?
        end

        def does_not_match?(actual)
          true
        end

        def base_message
          "expected to visualy match #{@expected.inspect}"
        end

        def failure_message
          base_message
        end

        def negative_failure_message
          base_message.gsub(/match/, 'differ from')
        end

        def failure_message_for_should
          base_message
        end

        def failure_message_for_should_not
          base_message.gsub(/match/, 'differ from')
        end

        def description
          "be the same as the given image"
        end

      end

      def be_the_same_as(expected)
        BeTheSameAs.new(expected)
      end

    end
  end
end