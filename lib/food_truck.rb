class FoodTruck
  attr_reader :name,
              :inventory

  def initialize(name)
    @name      = name
    @inventory = {}
  end

  def check_stock(item_obj)
    if @inventory.include?(item_obj)
      @inventory[item_obj]
    else
      0
    end
  end
end