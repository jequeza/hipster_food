class Event
  attr_reader :name,
              :food_trucks

  def initialize(name)
    @name        = name
    @food_trucks = []
  end

  def add_food_truck(food_truck_obj)
    @food_trucks.push(food_truck_obj)
  end

  def food_truck_names
    @food_trucks.map do |food_truck|
      food_truck.name
    end
  end

  def food_trucks_that_sell(item_obj)
    @food_trucks.find_all do |food_truck|
      food_truck.inventory.keys.include?(item_obj)
    end
  end

  def total_inventory
    event_inventory = Hash.new(0)
    @food_trucks.each do |food_truck|
      food_truck.inventory.each do |item, amount|
        event_inventory[item] = {quantity: amount, food_trucks: food_trucks_that_sell(item)}
        # if event_inventory[item].nil?
        #   event_inventory[item] = {quantity: amount, food_trucks: food_trucks_that_sell(item)}
        # elsif !event_inventory[item].nil?
        #   event_inventory[item][:quantity] + amount
        # end
      end
    end
    event_inventory
  end

end