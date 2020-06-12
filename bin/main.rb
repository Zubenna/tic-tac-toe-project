#!/usr/bin/env ruby
require_relative '../lib/check_game'
require_relative '../lib/board'
check_game = GameCheck.new
game_board = GameBoard.new
game_board.board = [0, 1, 2, 3, 4, 5, 6, 7, 8]
player = ''
player_two = ''
first_name = ''
second_name = ''
puts
puts '                Welcome to TIC-TAC-TOE GAME'
puts
puts game_board.display_board
puts

loop do
  puts 'Player one, enter your name:'
  first_name = gets.chomp
  result = check_game.vallidate_name(first_name)
  puts 'Invalid!! Name must be alphabets not less than 3 letters' if result == false
  break if result == true
end

player_one = first_name

loop do
  puts 'Player two, enter your name:'
  second_name = gets.chomp
  result = check_game.vallidate_name(second_name)
  puts 'Invalid!! Name must be alphabets not less than 3 letters' if result == false
  break if result == true
end

player_two = second_name
vallid_symbol_one = ''

loop do
  puts "First player - #{player_one}, select 'X' or 'Y'"
  first_symbol = gets.chomp.upcase
  selected_symbol = check_game.vallidate_symbol(first_symbol)
  puts 'Invalid!!!, Select X or Y' if selected_symbol == false
  if selected_symbol == true
    vallid_symbol_one = first_symbol
    result = game_board.assign_symbol(vallid_symbol_one, player_one, player_two)
    puts result
  end
  break if vallid_symbol_one.eql?('X') || vallid_symbol_one.eql?('Y')
end

player_choose = ''
player = ''
value = false
vallid_symbol_two = 'Y' if vallid_symbol_one == 'X'
vallid_symbol_one = 'X' if vallid_symbol_two == 'Y'
user_symbol = vallid_symbol_one

loop do
  player = player_two if value == true
  player = player_one if value == false

  loop do
    puts "#{player}: Please select the position where you want to play from the board"
    player_choose = gets.chomp
    check_number = game_board.vallidate_position(player_choose)
    puts 'Your selection is invalid, Please enter digit between 0 and 8' if check_number == false
    player_choose = player_choose.to_i
    check_position = game_board.check_free_position(player_choose)
    puts 'The position is taken, please select another one!' if check_position == false
    break if check_position == true && check_number == true
  end

  game_board.play(player_choose, user_symbol)
  puts game_board.display_board
  win = game_board.check_winner(user_symbol)
  if win == true
    puts "#{player} is the Winner!"
    break
  end
  draw = game_board.check_draw
  if draw == true
    puts 'Waoo!! It is a tie'
    break
  end
  value = !value
  user_symbol = check_game .toggle_symbol(user_symbol)
end
