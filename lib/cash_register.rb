def CashRegister
  attr_accessor :total, :discount, :items, :transaction
  
  def initialize(discount = 0)
    @total = 0
    @items = []
    @discount = discount
  end
  
  def add_item(name, price, quantity = 1)
  end
  
  def total
    @total
  end
  
end
