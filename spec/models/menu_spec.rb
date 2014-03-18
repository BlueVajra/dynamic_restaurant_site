require 'menu'

describe Menu do
  it "returns an object of menu items" do

    menu = Menu.new
    expected = Item.new("Channa Masala", "5.95", "Yummy goodness", "food1.jpg")
    actual = menu.items[0]

    expect(actual).to eq expected
  end
  it "returns only Monday items" do
    menu = Menu.new("Mon")
    expected = Item.new("Channa Masala", "5.95", "Yummy goodness", "food1.jpg")
    actual = menu.items[0]

    expect(actual).to eq expected
  end
  it "returns only Saturday items" do
    menu = Menu.new("Sat")
    expected = Item.new("Buff Momos", "6.95", "Way Yummy goodness", "food3.jpg")
    actual = menu.items[6]

    expect(actual).to eq expected
  end
  it "pulls in paragraphs from txt file" do
    menu = Menu.new("Sat")
    expected = "Sausage ad tenderloin duis ground round"
    actual = menu.paragraphs[1]
    expect(actual).to include(expected)
  end

  #it "does not return Saturday- only items on Mon" do
  #  menu = Menu.new("Mon")
  #  expected = Item.new("Buff Momos", "6.95", "Way Yummy goodness", "food3.jpg")
  #  actual = menu.items
  #  expect(actual).to include(expected)
  #end
end