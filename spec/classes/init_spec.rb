require 'spec_helper'

describe "cucumber" do
   context "default version" do
     it { should contain_package('cucumber').with( { 'provider' => 'gem'} ) }     
  end
  
  context "specific version" do
    let(:params) { {
        :version => '1.2.1'
    } }

    it { should contain_package('cucumber').with( { 'provider' => 'gem', 'ensure' => '1.2.1'} ) } 
  end

end