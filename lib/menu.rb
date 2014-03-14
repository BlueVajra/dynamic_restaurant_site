require 'csv'
require 'item'

class Menu
  def initialize
    @items = []
    CSV.foreach(File.absolute_path("config/menu.csv"), { :headers => true }) do |row|
      #@items << row // if we use this simple way, we would have to change the erb to grab hashes rather than methods
      @items << Item.new(row["name"], row["price"], row["description"], row["image"])
    end
  end
  def items
    @items
  end
end