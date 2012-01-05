require 'roles/taxable'

class Tax
  def initialize(account, amount)
    @account = account
    @amount  = amount
  end

  def execute
    @account.extend(Taxable).tax(@amount)
  end
end
