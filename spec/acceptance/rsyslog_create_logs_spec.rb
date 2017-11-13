require 'spec_helper_acceptance'

hosts_as('rsyslogclient').each do |host|

describe 'lm3corp_rsyslog::client class' do
  pp = <<-EOS
    class { 'lm3corp_rsyslog::client':
       server => '10.10.11.10'
    }
  EOS


  it 'should run without errors' do
    result = apply_manifest_on(host,pp, :catch_failures => true)
    expect(result.exit_code).to eq 2
  end

  end
end