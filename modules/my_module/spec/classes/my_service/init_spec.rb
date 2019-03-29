require 'spec_helper'

describe 'my_module::my_service::init' do

  let(:facts) do
  {
      :osfamily        => 'Oracle',
      :operatingsystem => 'OEL',
  }
  end

  context 'should compile with_all_deps' do
    it do
      is_expected.to compile.with_all_deps
    end
  end

  context 'should call required classes with dependencies' do
    it do
      is_expected.to contain_class('my_module::my_service::init')
      is_expected.to contain_class('my_module::my_service::params')
      is_expected.to contain_class('my_module::my_service::install').that_comes_before('my_module::my_service::configuration')
      is_expected.to contain_class('my_module::my_service::configuration')
      is_expected.to contain_class('my_module::my_service::service').that_subscribes_to('my_module::my_service::configuration')
    end
  end

end
