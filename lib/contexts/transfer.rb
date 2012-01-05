require 'roles/depositable'
require 'roles/withdrawable'

class Transfer
  def initialize(from_account, to_account, amount)
    @from_account = from_account
    @to_account   = to_account
    @amount       = amount
  end

  def execute
    @from_account.extend(Withdrawable).withdraw(@amount)
    @to_account.extend(Depositable).deposit(@amount)
  end
end
