# ChromeLogger

A Ruby library that implements the [Chrome Logger](http://craig.is/writing/chrome-logger) specification as Rack middleware.

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
