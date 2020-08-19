class CashRegister
  attr_accessor :total, :discount

  def initialize(discount = nil)
    @total = 0
    @discount = discount
  end

  def add_item(title, price, quantity = 1)
    actual_price = price * quantity
    @total = @total + actual_price
  end

  def apply_discount
    if discount
      self.total = (self.total * ((100.0 - discount.to_f)/100)).to_i
      puts "After the discount, the total comes to $#{total}."
    else
      puts "There is no discount to apply."
    end
  end

end
