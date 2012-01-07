require 'roles/transferrable'

class Transfer
  def initialize(from_account, to_account, amount)
    @from_account = from_account
    @to_account   = to_account
    @amount       = amount
  end

  def execute
    @from_account.extend(Transferrable)
    @from_account.transfer(@to_account, @amount)
  end
end
