# Foodles: technical test

## Problem solved in this repo

1) Write a function that takes as input (sentence: String, n: Number) 
and returns a list of size `n` where each element contains a word and and the frequency of that word in `sentence`
This list should be sorted by decreasing frequency and alphabetical order in case of tie.

Example: 
Input: ("baz bar foo foo zblah zblah zblah baz toto bar", 3)
Output: 
[
   ("zblah", 3),
   ("bar", 2),
   ("baz", 2),
]

2) Write tests for the function you just wrote

You are free to chose the programming language that you are the most comfortable with.


## Installation

Install the gem and add to the application's Gemfile by executing:

    $ bundle add foodles

If bundler is not being used to manage dependencies, install the gem by executing:

    $ gem install foodles

## Usage

TODO: Write usage instructions here

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and the created tag, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/foodles.
