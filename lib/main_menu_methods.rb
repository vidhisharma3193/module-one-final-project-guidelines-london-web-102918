#----MAIN MENU----

def main_menu_options_prompt
  add_beer_icons
  puts "MAIN MENU"
  add_beer_icons
  puts "Please type '1' if you want BeerMe to BeerYou!"
  puts "Please type '2' to search for a beer"
  puts "Please type '3' to search for a brewery"
  puts "Please type '4' to see a list of all beer styles"
  puts "You can type 'main' at any time to return to the Main Menu"
  puts "Or type 'log out' to quit BeerMe.... We'll miss you!"
  add_beer_icons
end

def main_menu_options
  main_menu_options_prompt
  puts "Type here:"
  user_input = gets.chomp
  case user_input
    when "1"
      beer_me
    when "2"
      find_beer
    when "3"
      find_brewery
    when "4"
      list_beer_styles
    when "5"
      user_account_loop
    when "main"
      main_menu_options
    when "log out"
      log_out
    else
      invalid_input
      main_menu_options
  end
end
