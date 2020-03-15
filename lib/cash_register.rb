require "pry"

class CashRegister

  attr_accessor :total, :discount, :items
  counter = 0
  def initialize(discount=0)
    @total = 0
    @discount = discount
    @items = items


  end

  def add_item(title, price, quantity=1)
    @total += title && price * quantity
    @total
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
    if quantity > 1
    counter = 0
    while counter < add_item
      @items << add_item
      counter += 1
    end
  else
    @items << add_item
  end

  end

  #def void_last_transaction
      #@total -= @price
    #end
end
