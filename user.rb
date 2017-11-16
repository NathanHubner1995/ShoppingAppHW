class User
  attr_accessor :name, :wallet, :cart
  def initialize (name, wallet)
    @name = name
    @wallet = wallet
    @cart = []

  end

  def add_to_cart (item)
    @cart << item
    deduct(item[:price])
  end

  def deduct(item_price)
    @wallet = @wallet - item_price

  end

  def display_cart
    @cart.each_with_index do |item, i|
      puts "#{i + 1} - #{item[:name]}"
    end
  end

  def display_wallet
    puts "Your wallet has #{@wallet}"

  end

end
