#!/usr/bin/env ruby
require_relative '../lib/check_game'
require_relative '../lib/users'
require_relative '../lib/board'

game = Users.new
check_game = GameCheck.new
game_board = GameBoard.new

player = ""
player_two = ""
first_name = ""
second_name = ""
puts
puts '                Welcome to TIC-TAC-TOE GAME'
puts
puts game_board.display_board
puts

loop do
  puts 'Player one, enter your name:'
  first_name = gets.chomp
  result = check_game.vallidate_name(first_name)
  puts "Invalid!! Name must be alphabets not less than 3 letters" if result == false
  break if result == true
end

player_one = first_name

loop do
  puts 'Player two, enter your name:'
  second_name = gets.chomp
  result = check_game.vallidate_name(second_name)
  puts "Invalid!! Name must be alphabets not less than 3 letters" if result == false
  break if result == true
end

player_two = second_name
vallid_symbol_one = ""

loop do
  puts "First player - #{player_one}, select 'X' or 'Y'"
  first_symbol = gets.chomp.upcase
  selected_symbol = check_game.vallidate_symbol(first_symbol)
  puts "Invalid!!!, Select X or Y" if selected_symbol == false
     if selected_symbol == true
      vallid_symbol_one = first_symbol
      result = game.assign_symbol(vallid_symbol_one, player_one, player_two)
      puts result
    end
    break if vallid_symbol_one == "X" || vallid_symbol_one == "Y"
end

player_choose = ""
player = ""
value = false
vallid_symbol_two = "X" if vallid_symbol_one == "Y"
vallid_symbol_two = "Y"  if vallid_symbol_one == "X"
user_symbol = vallid_symbol_one

loop do
    puts value
    puts user_symbol
    player = player_two if value == true
    player = player_one if value == false
     
  loop do
    puts "#{player}: Please select the position where you want to play from the board"
    player_choose = gets.chomp
    check_number = check_game.vallidate_position(player_choose)
    puts'Your selection is invalid, Please enter digit between 0 and 8' if check_number == false
    break if check_number == true
  end
   
  loop do
    player_choose = player_choose.to_i
    check_position = game_board.check_free_position(player_choose)
    if check_position == false
    puts 'The position is taken, please select another one!'
    end
    break if check_position == true
  end

  game.play(player_choose, user_symbol)
  puts game_board.display_board
  win = game_board.check_winner
  puts "#{player} is the Winner!" if win == true
  draw = game_board.check_draw
  puts 'Waoo!! It is a tie' if draw == true
  value = !value
  user_symbol = game.toggle_symbol(user_symbol)

  break if win == true || draw == true
end 
  





   




  
