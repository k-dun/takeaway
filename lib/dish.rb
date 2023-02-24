class Dish
  def initialize
    @dishes = []
  end

  def add_dish(name, price)
    @dishes << [name, price]
  end

  def return_all_dishes
    return @dishes
  end
end