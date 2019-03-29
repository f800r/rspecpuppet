require 'spec_helper'

describe 'my_module::my_service::install' do

  context 'should compile with_all_deps' do
    it do
      is_expected.to compile.with_all_deps
    end
  end

  context 'should contain package' do
    it do
     is_expected.to contain_package('my_service').with_ensure('present')
    end
  end
end