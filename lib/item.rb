class Item
  attr_reader :name, :price, :description, :image

  def initialize(name, price, description, image="images/no_image.jpg")
    @name = name
    @price = price.to_f
    @description = description
    @image = image
  end

  def price(today = Date.today)
    today.wednesday? ? @price = (@price * 0.9).round(2) : @price
  end

  def == (other)
    self.name == other.name
    self.price == other.price
    self.description == other.description
    self.image == other.image
  end
end