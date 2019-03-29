require 'spec_helper'

describe 'my_module::my_service::service' do

  let(:facts) do
    {
        :osfamily => 'Oracle',
        :operatingsystem => 'OEL',
    }
  end

  let(:pre_condition) { [
      # load params class for test
      'contain my_module::my_service::params',
  ]
  }

  context 'should compile with_all_deps' do
    it do
      is_expected.to compile.with_all_deps
    end
  end

  context 'should contain service with requested parameters' do
    it do
      is_expected.to contain_service('my_service').with(
          'enable'     => 'true',
          'ensure'     => 'running',
          'hasrestart' => 'true',
          'hasstatus'  => 'true',
          'name'       => 'myservce_servicename_oracle',
      )
    end
  end
end