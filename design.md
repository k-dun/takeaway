1. 
As a customer
So that I can check if I want to order something
I would like to see a list of dishes with prices.

As a customer
So that I can order the meal I want
I would like to be able to select some number of several available dishes.

As a customer
So that I can verify that my order is correct
I would like to see an itemised receipt with a grand total.

---

As a customer
So that I am reassured that my order will be delivered on time
I would like to receive a text such as "Thank you! Your order was placed and will be delivered before 18:52" after I have ordered.

2. 

class Dish
  def initialize(item, price) # item is a string, price is an integer
  end
end

class Menu
  def initialize
  end

  def show_menu
    # returns a list of dishes available to order
  end
end

class Order
  def initialize
  end

  def add_dish
    # adds dish to the order
  end

  def receipt_items
    # returns the list of all items on the order with the prices
  end

  def grand_total
    # returns the total price
  end
end

class send_confirmation
  def initialize
  end

  def format_message
    # returns a nicely formatted message
  end

  def send_message
    # sends the message to the person who ordered
  end
end

3. 

# 1


# 2


# 3


# 4


# 5


# 6


# 7
