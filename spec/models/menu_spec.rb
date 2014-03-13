require 'menu'

describe Menu do
  it "returns an object of menu items" do

    menu = Menu.new
    expect(menu.items[0].name).to eq "Channa Masala"

  end
end