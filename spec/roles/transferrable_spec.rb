require 'roles/transferrable'
require 'ostruct'

describe Transferrable do
  let(:source) { OpenStruct.new.extend(Transferrable) }
  let(:destination) { OpenStruct.new.extend(Transferrable) }

  before :each do
    source.balance      = 100.0
    destination.balance = 100.0
  end

  it "taxes the balance" do
    source.balance.should == 100.0
    destination.balance.should == 100.0
    source.transfer(destination, 51.0)
    source.balance.should == 49.0
    destination.balance.should == 151.0
  end
end
