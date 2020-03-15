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
    if self.discount == 0
      return "There is no discount to apply."
    end
    self.discount / 100.to_f * self.total
    self.total -= self.discount * 10
      "After the discount, the total comes to $#{self.total.to_i}."
  end

  def items
    self.items.times
  end



  #def void_last_transaction
      #@total -= @price
    #end
end
