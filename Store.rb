class Store
  attr_accessor :items
  def initialize ()
    @items = [
      {name: "Eggs", price: 1.50},
      {name: "Bread", price: 1.75},
      {name: "Fruit Punch", price: 0.75},
      {name: "Shampoo", price: 4.50},
      {name: "Toothpaste", price: 2.50}
    ]
  end

  def display_items
    @items.each_with_index do |item, i|
      puts "#{i + 1} - #{item[:name]} #{item[:price]}"
    end

  end

  def get_item (item_number)
    return @items[item_number - 1]
  end

  def get_item_price (item_number)
    return @items[item_number - 1][:price]
  end
end
