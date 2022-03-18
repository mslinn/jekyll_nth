`jeykll_nth`
[![Gem Version](https://badge.fury.io/rb/jeykll_nth.svg)](https://badge.fury.io/rb/jeykll_nth)
===========

`jeykll_nth` is a Jekyll filter plugin that returns item n of array, origin 1.


## Installation

Add this line to your application's Gemfile:

```ruby
gem 'jeykll_nth'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install jeykll_nth


## Additional Information
More information is available on
[Mike Slinn&rsquo;s website](https://www.mslinn.com/blog/2020/10/03/jekyll-plugins.html).


## Development

After checking out the repo, run `bin/setup` to install dependencies. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

Install development dependencies like this:
```
$ BUNDLE_WITH="development" bundle install
```

To build and install this gem onto your local machine, run:
```shell
$ bundle exec rake install
jeykll_nth 1.0.0 built to pkg/jeykll_nth-0.1.0.gem.
jeykll_nth (1.0.0) installed.

$ gem info jeykll_nth

*** LOCAL GEMS ***

jeykll_nth (1.0.0)
    Author: Mike Slinn
    Homepage:
    https://github.com/mslinn/jeykll_nth
    License: MIT
    Installed at: /home/mslinn/.gems

    Generates Jekyll logger with colored output.
```

To release a new version,
  1. Update the version number in `version.rb`.
  2. Commit all changes to git; if you don't the next step might fail with an unexplainable error message.
  3. Run the following:
     ```shell
     $ bundle exec rake release
     ```
     The above creates a git tag for the version, commits the created tag,
     and pushes the new `.gem` file to [RubyGems.org](https://rubygems.org).


## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/mslinn/jeykll_nth.


## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
