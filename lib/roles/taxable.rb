module Taxable
  def tax(amount)
    self.balance -= self.balance * amount
  end
end
