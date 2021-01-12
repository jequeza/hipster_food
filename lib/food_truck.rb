class FoodTruck
  attr_reader :name,
              :inventory

  def initialize(name)
    @name      = name
    @inventory = Hash.new(0)
  end

  def check_stock(item_obj)
    if @inventory.include?(item_obj)
      @inventory[item_obj]
    else
      0
    end
  end

  def stock(item_obj, amount)
    @inventory[item_obj] += amount
  end
end