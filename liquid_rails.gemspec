require_relative 'lib/liquid_rails/version'

version = LiquidRails::VERSION

Gem::Specification.new do |s|
  s.name        = 'liquid_rails'
  s.version     = version
  s.summary     = 'Add support for Liquid templates in Ruby on Rails.'
  s.description = 'Allows you to use .liquid templates in your views & ViewComponents.'
  s.license     = 'MIT'
  s.author      = 'Nathan Appere'
  s.email       = 'nathan@rubykit.org'
  s.homepage    = 'https://github.com/rubykit/liquid_rails'

  s.metadata = {
    'source_code_uri' => "https://github.com/rubykit/liquid_rails/tree/v#{ version }"
  }

  s.add_dependency 'liquid',         '~> 5.0'
  s.add_dependency 'railties',       '~> 6.0.0'
  s.add_dependency 'view_component', '~> 2.40'

  s.add_development_dependency 'bundler'
  s.add_development_dependency 'rails', '~> 6.0'
  s.add_development_dependency 'rake'

  s.files        = `git ls-files`.split("\n")
  s.require_path = 'lib'
end
