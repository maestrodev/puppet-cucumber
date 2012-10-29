require 'spec_helper'

describe "cucumber" do
   context "default version" do
     it { should contain_package('cucumber').with( { 'provider' => 'gem'} ) }     
  end
  
  context "specific version" do
    version = '1.2.1'
    let(:params) { {
        :version => version
    } }

    it { should contain_package('cucumber').with( { 'provider' => 'gem', 'ensure' => version} ) } 
  end

end