# Latex2Image

Welcome to your new gem! In this directory, you'll find the files you need to be able to package up your Ruby library into a gem. Put your Ruby code in the file `lib/latex2image`. To experiment with that code, run `bin/console` for an interactive prompt.

TODO: Delete this and the text above, and describe your gem

## Dependencies

That gem require a `LaTeX` distribution and `dvipng`. The shell-script will only work in a Linux distribution, e.g. **Ubuntu**.

To install a `LaTeX` distribution in **Ubuntu** type in a terminal:

    sudo apt-get install texlive-full

To install `dvipng` in **Ubuntu** type in a terminal:

    sudo apt-get install dvipng


## Installation

Add this line to your application's Gemfile:

```ruby
gem 'latex2image'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install latex2image

## Usage

To convert LaTeX formules to PNG, just add to your code:

``` ruby
image = Latex2Image.convert '\int \ln{x} dx = |x| \ln{|x|} - x +c'
image.output
# => #<File:/tmp/latex2image20151102-4025-9tmj0upng>
```

This file will look like:

![latex](https://cloud.githubusercontent.com/assets/501867/10887518/9dd01140-816e-11e5-92d8-00db7249e7ae.png)

###

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake rspec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/latex2image. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

