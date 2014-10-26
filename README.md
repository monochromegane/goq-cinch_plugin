# Goq::CinchPlugin

This is a Cinch plugin for [goq](https://github.com/monochromegane/goq).

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'goq-cinch_plugin'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install goq-cinch_plugin

## Usage

```ruby
require "cinch"
require "goq/cinch_plugin"

bot = Cinch::Bot.new do
  configure do |c|
    # add all required options here
    c.plugins.plugins = [Goq::CinchPlugin]
    c.plugins.options[Goq::CinchPlugin] = {
      target: 'test',
      limit: 5
    }
  end
end

bot.start
```

## Contributing

1. Fork it ( https://github.com/[my-github-username]/goq-cinch_plugin/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
