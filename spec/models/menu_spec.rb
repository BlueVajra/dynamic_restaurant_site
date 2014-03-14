require 'menu'

describe Menu do
  it "returns an object of menu items" do

    menu = Menu.new
    expected =Item.new("Channa Masala","5.95","Yummy goodness","food1.jpg")
    actual = menu.items[0]

    expect(actual).to eq expected

    #expect(menu.items[0].name).to eq "Channa Masala"
    #puts menu.items[2]["name"]

  end
end