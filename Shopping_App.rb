require_relative 'user.rb'
require_relative 'Store.rb'


store = Store.new
# Get the users name
puts "Hello! Before you shop, what is your name?"
user_response = gets.chomp
# # Find out the amount of money they user has
puts "Hello #{user_response}, how much money did you bring with you today?"
user_money = gets.to_f
# # User has profile
puts "Alright, #{user_response} with your #{user_money} let's go shopping!"
user = User.new(user_response, user_money)
# Display menu of what the user can do in my Store
  puts "Welcome to our store!"

while true
  puts "1. Buy Items"
  puts "2. View your cart"
  puts "3. How much money do you have left"
  puts "4. Exit"
  key_selection = gets.chomp
  case key_selection
    when "1"
      puts "Alright #{user.name} what would you like to buy?"
      store.display_items
      item_choice = gets.to_i
      if user.wallet >= store.get_item_price(item_choice)
        user.add_to_cart(store.get_item(item_choice))
      else
        puts "Sorry you did not bring enough for that item."

      end
    when "2"
      user.display_cart
    when "3"
      user.display_wallet

    when "4"
      exit 
  end
end

# let user know they can buy something
# Show them what we have in our Store
# Let them know how much money they have remaining
