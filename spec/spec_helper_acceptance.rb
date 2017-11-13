require 'beaker-rspec'
require 'beaker-rspec/spec_helper'
require 'beaker-rspec/helpers/serverspec'
require 'beaker/puppet_install_helper'

# Install Puppet on all hosts

run_puppet_install_helper
RSpec.configure do |c|
  module_root = File.expand_path(File.join(File.dirname(__FILE__), '..'))

  c.formatter = :documentation

  c.before :suite do
    # Install module to all hosts
    hosts.each do |host|
      install_dev_puppet_module_on(host, :source => module_root, :module_name => 'lm3corp_rsyslog',
          :target_module_path => '/etc/puppetlabs/code/environments/production/modules')
      # Install dependencies
      on(host, puppet('module', 'install', 'puppetlabs-stdlib'))
      on(host, puppet('module', 'install', 'saz-rsyslog'))
     
      if host.name == 'rsyslogserver'
      # Add more setup code as needed
        pp = <<-EOS
          class { 'lm3corp_rsyslog::server':
            port           => '514',
          }
        EOS
        apply_manifest_on(host, pp, :catch_failures => false)
      end

    end
  end
end
