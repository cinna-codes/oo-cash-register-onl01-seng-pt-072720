class CashRegister
  attr_accessor :total, :discount, :items, :items_with_prices

  def initialize(discount = nil)
    self.total = 0
    self.discount = discount
  end

  def add_item(title, price, quantity = 1)
    actual_price = price * quantity
    self.total = self.total + actual_price
    self.items ||= []
    quantity.times do
      self.items << title
    end
    self.items_with_prices ||= {}
    self.items_with_prices[title] = price
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
    self.items
  end

  def void_last_transaction
    self.total = (self.total - (self.items_with_prices[self.items.last]))
    items.pop
    #return self.total
    if items == []
      self.total = 0.0
      #return self.total
    end
    return self.total
  end

end
