module Capybara
  module Pdiff
    class Screenshot

      def initialize(target)
        @target = target
        is_supported?
      end

      def is_supported?
        false
      end

    end
  end
end
