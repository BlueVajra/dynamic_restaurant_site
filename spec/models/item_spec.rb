require 'spec_helper'
require 'item'

describe Item do
  it "checks item for a name" do
    item = Item.new("Channa Masala", 5.95, "Awesomeness")
    expect(item.name).to eq "Channa Masala"
  end
  it "checks item for a price" do
    item = Item.new("Channa Masala", 5.95, "Awesomeness")
    if Date.today.strftime("%A") == "Wednesday"
      expect(item.price).to eq 5.36
    else
      expect(item.price).to eq 5.95
    end
  end
  it "checks item for a description" do
    item = Item.new("Channa Masala", 5.95, "Awesomeness")
    expect(item.description).to eq "Awesomeness"
  end
  it "gives 10% discount on wednessdays" do
    item = Item.new("Channa Masala", 5.95, "Awesomeness")
    item.wed_date
    # the above line forces the item class to think it's wed""
    expect(item.price).to eq 5.36
  end

end