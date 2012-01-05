require 'roles/taxable'

class TestTaxable
  attr_accessor :balance
  include Taxable
end

describe Taxable do
  let(:taxable) do
    t = TestTaxable.new
    t.balance = 100.0
    t
  end

  it "taxes the balance" do
    taxable.balance.should == 100.0
    taxable.tax 0.07
    taxable.balance.should == 93.0
  end
end
