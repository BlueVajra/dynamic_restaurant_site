class Item
  attr_reader :name, :price, :description, :image

  def initialize(name, price, description, image="images/no_image.jpg")
    @name = name
    @price = price.to_f
    @description = description
    @image = image
    #@today =  Date.today
  end

  def price(today = Date.today)
    if today.wednesday?
      @price = (@price * 0.9).round(2)
    else
      @price
    end
  end
  #
  #def wed_date
  #  # this overrides the tdate variable
  #  @today = "Wednesday"
  #end

  def == (other)
    self.name == other.name
    self.price == other.price
    self.description == other.description
    self.image == other.image
  end

end