require 'hiera' 
require 'puppetlabs_spec_helper/module_spec_helper'
require 'rspec-puppet-facts'
include RspecPuppetFacts

RSpec.configure do |c|
   c.color = true
   c.formatter = :documentation
   c.hiera_config = 'spec/fixtures/hiera.yaml'
   c.after(:suite) do
      RSpec::Puppet::Coverage.report!
    end
end


