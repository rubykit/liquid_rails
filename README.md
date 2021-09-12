[LiquidRails]: https://github.com/rubykit/liquid_rails
[Liquid]: https://shopify.github.io/liquid/
[ViewComponent]: https://github.com/github/view_component
[Ruby on Rails]: https://rubyonrails.org/

# LiquidRails

[LiquidRails] allows you to render [Liquid] templates in [Ruby on Rails] views & [ViewComponent]s.

## Installation

Add this line to your application's Gemfile:

```ruby
group :test, :development do
  gem 'kit_liquid_rails'
end
```

Or, for a Ruby library, add this to your gemspec:

```ruby
spec.add_dependency 'kit_liquid_rails'
```

And then run:

```bash
$ bundle install
```

## Copyright & License

Copyright (c) 2021, Nathan Appere.

[LiquidRails] is licensed under [MIT License](MIT_LICENSE.md).
