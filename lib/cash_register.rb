require "pry"

class CashRegister

  attr_accessor :total, :discount, :items

  def initialize(discount=0)
    @total = 0
    @discount = discount
    @items = []

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

  def items(new_items)
    @items << new_items

  end



end
