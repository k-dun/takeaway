class Menu
  def initialize(dishes)
    @dishes = dishes
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