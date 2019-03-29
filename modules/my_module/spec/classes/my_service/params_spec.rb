require 'spec_helper'

describe 'my_module::my_service::params' do
  let(:facts) do
    {
        :osfamily => 'Oracle',
        :operatingsystem => 'OEL',
    }
  end

  context 'should compile with_all_deps' do
    it do
      is_expected.to compile.with_all_deps
    end
  end

  context 'unsupported operating system' do
    describe 'my_service class without any parameters on unsupported operating system - raises message' do
      let(:facts) do
        {
            :osfamily => 'DOS',
            :operatingsystem => 'CPM',
        }
      end

      it do
        expect { is_expected.to contain_package('my_service') }.to raise_error(Puppet::Error, /can not find configuration for osfamily DOS/)
      end
    end
  end

end