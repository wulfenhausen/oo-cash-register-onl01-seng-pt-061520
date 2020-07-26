class CashRegister
  attr_accessor :total, :discount, :items, :transaction
  
  def initialize(discount = 0)
    @total = 0
    @items = []
    @discount = discount
  end
  
  def add_item(name, price, quantity = 1)
    if quantity > 1
      i = 0
      while i < quantity
      @items << name
      i += 1
    end
    else
      @items << name
    end
    @transaction = price * quantity
    @total += @transaction
    @total
  end
  
  def apply_discount(discount_amount)
    discounted_amount_as_percentage = (100 - discount_amount.to.f) / 100
    @total = @total * discounted_amount_as_percentage
  end
  
  
  def void_last_transaction
    @total -= @transaction
  end
  
 
  
end
