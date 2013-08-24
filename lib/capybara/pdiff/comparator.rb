require 'chunky_png'

module Capybara
  module Pdiff

    class Comparator

      include ChunkyPNG::Color

      def initialize(baseline, current)
        @images = [
          ChunkyPNG::Image.from_file(baseline),
          ChunkyPNG::Image.from_file(current)
        ]
        @diff = []
      end

      def matches?
        # Will be moved in a separate gem 'pdiff'
        # Taken from http://jeffkreeftmeijer.com/2011/comparing-images-and-creating-image-diffs/
        output = ChunkyPNG::Image.new(@images.first.width, @images.last.width, WHITE)
        @diff = []

        @images.first.height.times do |y|
          @images.first.row(y).each_with_index do |pixel, x|
            unless pixel == @images.last[x,y]
              score = Math.sqrt(
                (r(@images.last[x,y]) - r(pixel)) ** 2 +
                (g(@images.last[x,y]) - g(pixel)) ** 2 +
                (b(@images.last[x,y]) - b(pixel)) ** 2
              ) / Math.sqrt(MAX ** 2 * 3)

              output[x,y] = grayscale(MAX - (score * MAX).round)
              @diff << score
            end
          end
        end
        # output.save('diff.png')
        @diff.length == 0
      end

    end

  end
end