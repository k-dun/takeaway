require 'dish'
require 'menu'
require 'order'
require 'send_confirmation'

RSpec.describe 'integration' do
  context 'Menu class' do
    it "creates and returns menu with dishes to order" do
      dishes = [
        Dish.new("Bigos", 5),
        Dish.new("Pierogi", 6),
        Dish.new("Zupa", 7.5)
      ]

      menu = Menu.new(dishes)
      expect { menu.print_menu }.to output(/.*Bigos.*5.*Pierogi.*6.*Zupa.*7.5/m).to_stdout
    end

    it 'finds the dish' do
      dishes = [
        Dish.new("Bigos", 5),
        Dish.new("Pierogi", 6),
        Dish.new("Zupa", 7.5)
      ]

      menu = Menu.new(dishes)
      expect(menu.find_dish("Pierogi")).to eq dishes[1]
    end
  end

  context 'Order class initializes' do
    it 'adds a dish to order' do
      dishes = [
        Dish.new("Bigos", 5),
        Dish.new("Pierogi", 6),
        Dish.new("Zupa", 7.5)
      ]
      menu = Menu.new(dishes)
      order = Order.new(menu)
      expect(order.add_to_order(dishes[2])).to eq true
    end

    it 'returns all ordered items' do
      dishes = [
        Dish.new("Bigos", 5),
        Dish.new("Pierogi", 6),
        Dish.new("Zupa", 7.5)
      ]
      menu = Menu.new(dishes)
      order = Order.new(menu)
      order.add_to_order(dishes[0])
      order.add_to_order(dishes[2])
      expect(order.ordered_items).to eq [dishes[0], dishes[2]]
    end

    it 'returns the total price of the order' do
      dishes = [
        Dish.new("Bigos", 5),
        Dish.new("Pierogi", 6),
        Dish.new("Zupa", 7.5)
      ]
      menu = Menu.new(dishes)
      order = Order.new(menu)
      order.add_to_order(dishes[0])
      order.add_to_order(dishes[2])
      expect(order.grand_total).to eq 12.5
    end
  end
end