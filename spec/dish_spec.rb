require 'dish'

RSpec.describe Dish do
  it 'initiates' do
    dish = Dish.new
  end

  context '#add_dish' do
    it 'adds dish to the array' do
      dish = Dish.new
      dish.add_dish("Bigos", 5)
      expect(dish.return_all_dishes).to eq [["Bigos", 5]]
    end

    it 'adds multiple dishes to the array' do
      dish = Dish.new
      dish.add_dish("Bigos", 5)
      dish.add_dish("Pierogi", 6)
      dish.add_dish("Zupa", 7.5)
      expect(dish.return_all_dishes).to eq [["Bigos", 5], ["Pierogi", 6], ["Zupa", 7.5]]
    end
  end

end