class Item
  attr_reader :name, :price, :description, :image

  def initialize(name, price, description, image="images/no_image.jpg")
    @name = name
    @price = price
    @description = description
    @image = image
  end

end