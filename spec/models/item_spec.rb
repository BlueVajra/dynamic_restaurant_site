require 'spec_helper'
require 'item'

describe Item do
  it "checks item for a name" do
    item = Item.new("Channa Masala", 5.95, "Awesomeness")
    expect(item.name).to eq "Channa Masala"
  end
  it "checks item for a price" do
    item = Item.new("Channa Masala", 5.95, "Awesomeness")
    expect(item.price).to eq 5.95
  end
  it "checks item for a description" do
    item = Item.new("Channa Masala", 5.95, "Awesomeness")
    expect(item.description).to eq "Awesomeness"
  end

end