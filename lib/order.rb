class Order
  def initialize(menu)
    @menu = menu
    @items_ordered = []
  end

  def add_to_order(dish)
    @items_ordered << dish
    return true
  end

  def ordered_items
    return @items_ordered
  end

  def grand_total
    total = 0
    @items_ordered.each { |dish| total += dish.price }
    return total
  end
end