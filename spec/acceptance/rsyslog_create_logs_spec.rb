require 'spec_helper_acceptance'

apply_manifests_opts = {
  :catch_failures => true,
  :modulepath     => '/etc/puppetlabs/code/environments/production/modules',
  :debug          => true
}

describe 'lm3corp_rsyslog::client class' do
  pp = <<-EOS
    class { 'lm3corp_rsyslog::client': }
  EOS


  it 'should run without errors' do
    result = apply_manifest(pp, apply_manifests_opts )
    expect(result.exit_code).to eq 2
  end

  #TODO: after creating a server and a client a file on the server should contain some sort of logging from the client
  #

end
