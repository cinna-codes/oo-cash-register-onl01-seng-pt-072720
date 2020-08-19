class CashRegister
  attr_accessor :total, :discount, :items, :items_with_prices

  def initialize(discount = nil)
    @total = 0
    @discount = discount
  end

  def add_item(title, price, quantity = 1)
    actual_price = price * quantity
    @total = @total + actual_price
    @items ||= []
    quantity.times do
      @items << title
    end
    @items_with_prices ||= {}
    @items_with_prices[title] = price
  end

  def apply_discount
    if discount
      self.total = (self.total * ((100.0 - discount.to_f)/100)).to_i
      return "After the discount, the total comes to $#{total}."
    else
      return "There is no discount to apply."
    end
  end

  def items
    @items
  end

  def void_last_transaction
    self.total = (self.total - (self.items_with_prices[self.items.last]))
    items.pop
    if items == []
      self.total = 0.0
    end
    return self.total
  end

end
