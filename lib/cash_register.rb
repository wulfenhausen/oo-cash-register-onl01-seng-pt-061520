def CashRegister
  attr_accessor :total, :discount, :items, :transaction
  
  def initialize(discount = 0)
    @total = 0
    @items = []
    @discount = discount
  end
  
  def add
 
  
end
