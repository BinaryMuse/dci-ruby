module Transferrable
  def transfer(to, amount)
    self.balance -= amount
    to.balance   += amount
  end
end
