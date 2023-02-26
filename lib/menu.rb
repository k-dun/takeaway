class Menu
  def initialize(dishes)
    @dishes = dishes
  end

  def dish_names
    all_dish_names = []
    @dishes.each { |dish| all_dish_names << dish.name }
    return all_dish_names
  end

  def print_menu
    i = 1
    @dishes.each do |dish| 
      puts "#{i}. #{dish.name}: £#{dish.price}"
      i += 1
    end
  end

  def find_dish(name)
    @dishes.find { |dish| dish.name == name }
  end
end