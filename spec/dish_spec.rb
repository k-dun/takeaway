require 'dish'

RSpec.describe Dish do
  it 'initiates' do
    dish = Dish.new("Bigos", 5)
    expect(dish.name).to eq "Bigos"
    expect(dish.price).to eq 5
  end
end
