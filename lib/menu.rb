class Menu
  def initialize
    @items = []
    @items << Item.new("Channa Masala", 5.95, "Awesomeness")
    @items << Item.new("Chicken Tikka Masala", 6.95, "Yummy goodness")
  end
  def items
    @items
  end
end