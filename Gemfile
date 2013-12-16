source 'https://rubygems.org'
puppetversion = ENV.key?('PUPPET_VERSION') ? "#{ENV['PUPPET_VERSION']}" : ['~> 3.3.0']

gem 'puppet', puppetversion

group :test do
  gem 'rake', '~> 10.1.0'
  gem 'rspec', '~> 2.14.1'
  gem 'rspec-puppet', '0.1.6'
  gem 'puppet-lint'
  gem 'puppetlabs_spec_helper'
end
