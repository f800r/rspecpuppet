source ENV['GEM_SOURCE'] || 'https://rubygems.org'

group :test do
  gem 'faraday_middleware', '0.10.1'
  gem 'listen', '3.0.8'
  gem 'metadata-json-lint'
  gem 'puppet', ENV['PUPPET_GEM_VERSION'] || '~> 3.8.0'
  gem 'puppet-lint-classes_and_types_beginning_with_digits-check'
  gem 'puppet-lint-leading_zero-check'
  gem 'puppet-lint-trailing_comma-check'
  gem 'puppet-lint-unquoted_string-check'
  gem 'puppet-lint-version_comparison-check'
  gem 'puppetlabs_spec_helper'
  gem 'rake', '< 11.0'
  gem 'rspec', '< 3.2.0'
  gem 'rspec-puppet', :git => 'https://github.com/rodjek/rspec-puppet.git'
  gem 'rspec-puppet-facts'
  gem 'rubocop', '0.33.0'
  gem 'simplecov', '>= 0.11.0'
  gem 'simplecov-console'
end

group :development do
  gem 'guard-rake'
  gem 'puppet-blacksmith'
  gem 'travis'
  gem 'travis-lint'
end

# vim:ft=ruby