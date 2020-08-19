class CashRegister
  attr_accessor :total

  def initialize(discount = nil)
    @total = 0
  end

end
