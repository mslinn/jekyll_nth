`jeykll_nth`
[![Gem Version](https://badge.fury.io/rb/jeykll_nth.svg)](https://badge.fury.io/rb/jeykll_nth)
===========

`jeykll_nth` is a Jekyll filter plugin that returns item n of array, origin 1.

## Usage

```
{{ [1, 2, 3, 4, 5] | nth: 2 }}  # returns 2
```
:warning: Important: the name of the filter must be followed by a colon (:). If you fail to do that an error will be generated and the Jekyll site building process will halt. The error message looks something like this: `Liquid Warning: Liquid syntax error (line 285): Expected end_of_string but found string in "{{ [1, 2, 3, 4, 5] | nth: '2' }}" in /some_directory/some_files.html Liquid Exception: Liquid error (line 285): wrong number of arguments (given 1, expected 2) in /some_directory/some_file.html Error: Liquid error (line 285): wrong number of arguments (given 1, expected 2)`


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

### Build and Install Locally
To build and install this gem onto your local machine, run:
```shell
$ rake install:local
```

The following also does the same thing:
```shell
$ bundle exec rake install
jeykll_nth 1.0.0 built to pkg/jeykll_nth-0.1.0.gem.
jeykll_nth (1.0.0) installed.
```

Examine the newly built gem:
```
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
