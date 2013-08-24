# capybara-pdiff

Visual regression testing tool integrated in Capybara.

## Philosophy

TODO : explain how it differs from PhantomCSS, Wraith or Huxley etc

## Workflow

TODO

1. Define baseline images strategy
2. Freeze the baseline image of a page or an element
3. In integration tests, assert current versions of page/element didn't change
4. If any changes, visualize the image diff

## Requirements

TODO

- Poltergeist : point to the patch that allows element screenshots
- Check screenshot capabilities of other drivers
- put image diff in an other gem
- if using ImageMagick ```compare``` tool, indicate dependency

## Installation

Add this line to your application's Gemfile:

    gem 'capybara-pdiff'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install capybara-pdiff

## Usage

Add ```require 'capybara/pdiff'``` in your spec helper. Capybara::Pdiff
is included by default for feature specs.

## TODO

- what happens when comparing an element, and the current size of the element isn't the same as the baseline ?
- define baseline storage strategy
- implement a basic version of Pdiff to be used here
- for page diff, check if whole page screenshot is available in every driver
- give the baseline reference in stay_the_same matcher failure message

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
