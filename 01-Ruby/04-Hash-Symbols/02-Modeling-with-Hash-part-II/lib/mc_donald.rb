DISHES_CALORIES = {
  "Hamburger" => 250,
  "Cheese Burger" => 300,
  "Big Mac" => 540,
  "McChicken" => 350,
  "French Fries" => 230,
  "Salad" => 15,
  "Coca Cola" => 150,
  "Sprite" => 150
}

MEALS = {
  "Happy Meal" =>	["Cheese Burger", "French Fries", "Coca Cola"],
  "Best Of Big Mac" => ["Big Mac", "French Fries", "Coca Cola"],
  "Best Of McChicken" => ["McChicken", "Salad", "Sprite"]
}

def poor_calories_counter(burger, side, beverage)
  DISHES_CALORIES[burger] + DISHES_CALORIES[side] + DISHES_CALORIES[beverage]
end

def calories_counter(orders)
  # TODO: return number of calories for a less constrained order
  count = 0

  orders.each do |item|
    if MEALS.include?(item)
      MEALS[item].each { |food| count += DISHES_CALORIES[food] }
    else
      count += DISHES_CALORIES[item]
    end
  end

  count
end
