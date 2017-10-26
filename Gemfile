source ENV['GEM_SOURCE'] || 'https://rubygems.org'

puppetversion = ENV.key?('PUPPET_VERSION') ? ENV['PUPPET_VERSION'] : ['>= 5.2']
gem 'metadata-json-lint'
gem 'puppet', puppetversion
gem 'puppetlabs_spec_helper', '>= 2.3.0'
gem 'puppet-lint', '>= 2.3.0'
gem 'facter', '>= 2.5.0'
gem 'rspec-puppet-facts', '1.7.1'
gem 'rspec-puppet'
gem 'semantic_puppet'
gem 'beaker', '>=3.27.0'
gem 'beaker-pe'

group :acceptance do
  gem 'beaker-rspec'
  gem 'beaker-puppet_install_helper'
  gem 'beaker-module_install_helper'
  gem 'rspec-retry'
end
