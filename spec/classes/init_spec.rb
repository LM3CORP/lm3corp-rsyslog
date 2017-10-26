require 'spec_helper'

describe 'lm3corp_rsyslog' do
  on_supported_os.each do |os,facts|
    context "on #{os}" do
      let (:facts) do
        facts
      end
  context 'with default values for all parameters' do
    it { should contain_class('lm3corp_rsyslog') }
    it { should compile }
  end
end
end
end
