require 'csv'
require 'item'

class Menu
  def initialize(day_of_week = Date.today.strftime("%a"))
    @items = []
    @home_paragraphs = []
    CSV.foreach(File.absolute_path("config/menu.csv"), {:headers => true}) do |row|
      if row["days"].include?(day_of_week) || row["days"].include?("All")
        @items << Item.new(row["name"], row["price"], row["description"], row["image"])
      end
    end
    File.readlines(File.absolute_path("config/home.txt")).each do |line|
      @home_paragraphs << line.strip if !line.strip.empty?
    end
  end

  def items
    @items
  end

  def paragraphs
    @home_paragraphs
  end
end