# `jekyll_nth` [![Gem Version](https://badge.fury.io/rb/jekyll_nth.svg)](https://badge.fury.io/rb/jekyll_nth)

`jekyll_nth` provides two Jekyll filter plugin that manipulate arrays.

* `nth` returns item `n` of the array, origin 0.
* `tail` returns the remainder of the array after the first element.


## Usage

```html
{{ [1, 2, 3, 4, 5] | nth: 2 }}  # returns 3
{{ [1, 2, 3, 4, 5] | nth: -1 }} # returns 5
{{ [1, 2, 3, 4, 5] | nth: 99 }} # throws exception
```

:warning: Important: the name of the filter must be followed by a colon (:). If you fail to do that an error will be generated and the Jekyll site building process will halt. The error message looks something like this: `Liquid Warning: Liquid syntax error (line 285): Expected end_of_string but found string in "{{ [1, 2, 3, 4, 5] | nth: '2' }}" in /some_directory/some_files.html Liquid Exception: Liquid error (line 285): wrong number of arguments (given 1, expected 2) in /some_directory/some_file.html Error: Liquid error (line 285): wrong number of arguments (given 1, expected 2)`

```html
{{ [1, 2, 3, 4, 5] | tail }}  # returns [2, 3, 4, 5]
{{ [1] | tail }}              # returns []
{{ [] | tail }}               # throws exception
```


## Installation

Add this line to your application's Gemfile:

```ruby
gem 'jekyll_nth'
```

And then execute:

```shell
$ bundle
```


## Additional Information

More information is available on
[Mike Slinn&rsquo;s website](https://www.mslinn.com/blog/2020/10/03/jekyll-plugins.html).


## Development

After checking out the repo, run `bin/setup` to install dependencies.

You can also run `bin/console` for an interactive prompt that will allow you to experiment.


### Build and Install Locally

To build and install this gem onto your local machine, run:

```shell
$ bundle exec rake install
jekyll_nth 1.0.0 built to pkg/jekyll_nth-0.1.0.gem.
jekyll_nth (1.0.0) installed.
```

Examine the newly built gem:

```shell
$ gem info jekyll_nth

*** LOCAL GEMS ***

jekyll_nth (1.0.0)
    Author: Mike Slinn
    Homepage:
    https://github.com/mslinn/jekyll_nth
    License: MIT
    Installed at: /home/mslinn/.gems

    Generates Jekyll logger with colored output.
```


### Build and Push to RubyGems

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

1. Fork the project
2. Create a descriptively named feature branch
3. Add your feature
4. Submit a pull request


## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
