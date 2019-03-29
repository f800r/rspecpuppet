# rspecpuppet [![Build Status](https://travis-ci.org/f800r/rspecpuppet.png)](https://travis-ci.org/f800r/rspecpuppet)

Tiny example for puppet-lint, validation and RSpec tests with a puppet module with CI server run.

# Install required [Gems](Gemfile.md) with bundler
Invoke bundle command in the rspecpuppet directory:
```
bundle install --path vendor
```

## Run Tests
Invoke command in directory my_module:
```
bundle exec rake
```

# Links
- [Code coverage for Puppet modules](https://www.morethanseven.net/2014/01/25/code-coverage-for-puppet-modules/)
- [Dump Puppet catalog](http://razorconsulting.com.au/dumping-the-catalog-in-rspec-puppet.html)
- [Write Puppet catalog to json](http://razorconsulting.com.au/dumping-the-catalog-in-rspec-puppet.html)