require 'spec_helper'

describe 'my_module::my_service::configuration' do

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
      pp catalogue.resources
    end
  end

  context 'service conf file is created' do
    it do
      is_expected.to contain_file('service_config_file').with(
          :owner => 'root',
          :group => 'root',
          :source => 'puppet:///modules/my_module/my_service.conf',
          :path => '/etc/myservice/conf/my_service.conf.tmp',
      )
    end
  end

  context 'template file with dynamic content from generate function is created' do
    it do
      is_expected.to contain_file('my_module_template_file').with(
          :owner => 'root',
          :group => 'root',
          :path => '/tmp/my_module.cfg',
          :mode => '0644',
      )
      content = catalogue.resource('file', 'my_module_template_file')[:content]
      expect(content).to match('DYNAMIC_CONTENT=')
    end
  end
end