# sample for puppet catalog dumping => http://razorconsulting.com.au/dumping-the-catalog-in-rspec-puppet.html
require 'spec_helper'

describe 'my_module::my_service::init' do

  let(:facts) do
    {
        :osfamily => 'Oracle',
        :operatingsystem => 'OEL',
    }
  end

  context 'pretty print catalog resources' do
    it do
      pp catalogue.resources
    end
  end

  context 'dump puppet catalog to file my_module-my_service.json' do
    it do
      File.write('my_module-my_service.json', PSON.pretty_generate(catalogue))
    end
  end
end
