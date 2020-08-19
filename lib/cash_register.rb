class CashRegister
  attr_accessor :total, :discount

  @items = []

  def initialize(discount = nil)
    @total = 0
    @discount = discount
  end

  def add_item(title, price, quantity = 1)
    actual_price = price * quantity
    @items << title
    @total = @total + price
  end

end
