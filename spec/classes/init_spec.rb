require 'spec_helper'
describe 'puppetconf' do
  context 'with default values for all parameters' do
    it { should contain_class('puppetconf') }
  end
end
