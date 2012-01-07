require 'roles/taxable'
require 'ostruct'

describe Taxable do
  let(:taxable) { OpenStruct.new.extend(Taxable) }

  before :each do
    taxable.balance = 100.0
  end

  it "taxes the balance" do
    taxable.balance.should == 100.0
    taxable.tax 0.07
    taxable.balance.should == 93.0
  end
end
