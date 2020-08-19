class CashRegister
  attr_accessor :total

  def initialize(employee_discount = nil)
    @total = 0
  end

end
