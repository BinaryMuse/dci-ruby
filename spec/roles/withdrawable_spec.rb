require 'roles/withdrawable'

class TestWithdrawable
  attr_accessor :balance
  include Withdrawable
end

describe Withdrawable do
  let(:withdrawable) do
    w = TestWithdrawable.new
    w.balance = 100.0
    w
  end

  it "withdraws from the balance" do
    withdrawable.balance.should == 100.0
    withdrawable.withdraw 51.0
    withdrawable.balance.should == 49.0
  end
end
