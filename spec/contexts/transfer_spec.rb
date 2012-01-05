require 'data/account'
require 'contexts/transfer'

describe Transfer do
  let(:account_one) { Account.new :balance => 500.0 }
  let(:account_two) { Account.new :balance => 500.0 }

  it "transfers money" do
    account_one.balance.should == 500.0
    account_two.balance.should == 500.0
    Transfer.new(account_one, account_two, 100.0).execute
    account_one.balance.should == 400.0
    account_two.balance.should == 600.0
  end
end
