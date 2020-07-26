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
  
  def apply_discount
    if @discount == 0
      "There is no discount to apply"
    elsif @discount > 0
      @discount = @discount.to_f/100
      @total = (1 - @discount)*@total
      "After the discount, the total comes to $#{@total.to_i}."
    end
  end
  
  
  def void_last_transaction
    @total -= @transaction
  end
  
 
  
end
