require 'data/account'
require 'contexts/tax'

describe Tax do
  let(:account) { Account.new :balance => 500.0 }

  it "taxes an account" do
    account.balance.should == 500.0
    Tax.new(account, 0.09).execute
    account.balance.should == 455.0
  end
end
