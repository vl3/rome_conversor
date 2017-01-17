# RomeConversor
NOTE: The correct syntax would be Roman Conversor, Roman Numeral, etc.
To correct all terms in the library is a todo.

Simple library to convert decimals to rome numerals and viceversa

## Installation

Clone the repository and add this line to your application's Gemfile:

```ruby
gem 'rome_conversor', path: "path_to_the_gem"
```

And then execute:

    $ bundle

## Usage

```ruby
RomeConversor.parse 10
#=> x
RomeConversor.parse "xxii"
#=> 22
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake test` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/rome_conversor.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

