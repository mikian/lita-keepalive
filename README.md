# Lita::Keepalive

Keepalive plugin for Lita and heroku - pings its own route periodically to keep Heroku instance alive.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'lita-keepalive'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install lita-keepalive

## Usage

TODO: Write usage instructions here

```ruby
Lita.configure do |config|
  config.handlers.keepalive.minutes = 1
  config.handlers.keepalive.url = 'http://your-lita-robot-name.herokuapp.com'
end
```

## Contributing

1. Fork it ( https://github.com/[my-github-username]/lita-keepalive/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
