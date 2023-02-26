require_relative 'dish'
require_relative 'menu'
require_relative 'order'

dishes = [
  Dish.new("Bigos", 6),
  Dish.new("Pierogi", 7),
  Dish.new("Zupa", 5.5)
]

menu = Menu.new(dishes)
order = Order.new(menu)

puts "Welcome to Makers Kitchen!"
puts "Here is our menu:"

menu.print_menu

loop do
  puts "What would you like to order: "
  dish = gets.chomp

  if (menu.dish_names).include?(dish)
    order.add_to_order(dish)
    puts "Anything else? (y/n)"
    input = gets.chomp.downcase

    input == "y" ? next : break
  else
    next
  end
end

order.print_receipt