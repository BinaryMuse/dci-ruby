require 'roles/depositable'

class TestDepositable
  attr_accessor :balance
  include Depositable
end

describe Depositable do
  let(:depositable) do
    d = TestDepositable.new
    d.balance = 100.0
    d
  end

  it "deposits to the balance" do
    depositable.balance.should == 100.0
    depositable.deposit 38.0
    depositable.balance.should == 138.0
  end
end
