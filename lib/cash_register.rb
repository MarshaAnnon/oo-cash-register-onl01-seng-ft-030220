require "pry"

class CashRegister

  attr_accessor :total, :discount, :items
  counter = 0
  def initialize(discount=0)
    self.total = 0
    self.discount = discount
    self.items = []
  end

  def add_item(title, price, quantity=1)
    self.total += title && price * quantity
    quantity.times { self.items << title }
    self.last_transaction = [title, price, quantity]
  end

  def apply_discount
    if @discount == 0
      return "There is no discount to apply."
    end
    @discount / 100.to_f * @total
    @total -= @discount * 10
      "After the discount, the total comes to $#{@total.to_i}."
  end

  def items
    @items.times
  end



  #def void_last_transaction
      #@total -= @price
    #end
end
