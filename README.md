# ChromeLogger

[![Gem Version](https://badge.fury.io/rb/chrome_logger.png)](http://badge.fury.io/rb/chrome_logger)
[![Build Status](https://travis-ci.org/cookrn/chrome_logger.png)](https://travis-ci.org/cookrn/chrome_logger)
[![Code Climate](https://codeclimate.com/github/cookrn/chrome_logger.png)](https://codeclimate.com/github/cookrn/chrome_logger)
[![Coverage Status](https://coveralls.io/repos/cookrn/chrome_logger/badge.png)](https://coveralls.io/r/cookrn/chrome_logger)
[![Dependency Status](https://gemnasium.com/cookrn/chrome_logger.png)](https://gemnasium.com/cookrn/chrome_logger)

A Ruby library that implements the [Chrome Logger](http://craig.is/writing/chrome-logger) specification as Rack middleware.

See [the example](https://github.com/cookrn/chrome_logger/blob/master/example/config.ru).

## Installation

Add this line to your application's Gemfile:

    gem 'chrome_logger'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install chrome_logger

## Installation on Rails

You probably only want it in certain environments. For `development`, add the following to your `development` group in your `Gemfile`:

    gem 'chrome_logger' , :require => 'chrome_logger/railtie'

## Usage

`env['console']` -- That's all she wrote!

It's just Rack middleware. Check out `example/config.ru`.

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

## License

MIT
