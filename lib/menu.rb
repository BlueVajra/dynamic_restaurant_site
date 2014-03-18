require 'csv'
require 'item'

class Menu
  def initialize(day_of_week = Date.today.strftime("%a"))
    @items = []
    CSV.foreach(File.absolute_path("config/menu.csv"), {:headers => true}) do |row|
      if row["days"].include?(day_of_week) || row["days"].include?("All")
        @items << Item.new(row["name"], row["price"], row["description"], row["image"])
      end
    end
  end

  def items
    @items
  end
end