require "pry"

class CashRegister

  attr_accessor :total, :discount

  def initialize(discount=0)
    @total = 0
    @discount = discount

  end

  def add_item(title, price, quantity=1)
    @total += title && price * quantity
    @total
  end

  def apply_discount
    @discount / 100.to_f * @total
    @total -= @discount * 10
      "After the discount, the total comes to $#{@total.to_1}."

  end



end
