require_relative 'dish'
require_relative 'menu'

class Order
  attr_reader :items_ordered

  def initialize(menu)
    @menu = menu
    @items_ordered = []
  end

  def add_to_order(dish)
    dish = @menu.find_dish(dish)
    @items_ordered << dish
    puts "Added #{dish.name} to order."
  end

  def ordered_items
    return @items_ordered
  end

  def grand_total
    total = 0
    @items_ordered.each { |dish| total += dish.price }
    return total
  end

  def print_receipt
    puts "Receipt:"
    @items_ordered.each { |dish| puts "#{dish.name}: £#{dish.price}" }
    puts "------"
    puts "Total: £#{grand_total}"
    puts "\nThanks for dining with us!"
  end
end