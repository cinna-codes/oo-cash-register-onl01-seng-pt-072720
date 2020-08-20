class CashRegister
  attr_accessor :total, :discount, :items, :items_with_prices

  def initialize(discount = nil)
    @total = 0
    @discount = discount
  end

  # def add_item(title, price, quantity = 1)
  #   actual_price = price * quantity
  #   @total = @total + actual_price
  #   @items ||= []
  #   quantity.times do
  #     @items << title
  #   end
  #   @items_with_prices ||= {}
  #   @items_with_prices[title] = price
  # end


  def add_item(title, price, quantity = 1)
      @price = price
      @total = @total + price
      @items ||= []
      quantity.times do
        @items << title
      end

      @last_quantity_bought = quantity
      @last_price = price ## yes, we already have a reference to this as @price, but this is just
                                     ## setting a new variable explicitly for our use case
    end

    def void_last_transaction
      ## now, down here, when we invoke this

      total_last_transaction = @last_quantity_bought * @last_price

      ## we can subtract the total of the last transaction.

      @last_quantity_bought.times do
        ## pop an item out
      end
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

  # def void_last_transaction
  #   self.total = (self.total - (self.items_with_prices[self.items.last]))
  #   items.pop
  #   #return self.total
  #   if items == []
  #     self.total = 0.0
  #     #return self.total
  #   end
  #   return self.total
  # end

end
