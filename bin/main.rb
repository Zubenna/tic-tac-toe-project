#!/usr/bin/env ruby

# Load the game
# Set the game board
# Load the Players

puts "Welcome to TIC-TAC-TOE GAME"
loop do
  puts 'Player one select "x" or "o"'
  first_player = gets.chomp
  second_player = ""
  if first_player == 'X'
    second_player = 'O'
    puts "Player one selected #{first_player} and player two selected #{second_player}"
  elsif first_player == 'O'
    second_player = 'X'
    puts "Player one selected #{first_player} and player two selected #{second_player}"
  else
    puts "Please select X or O"
  end
  break if first_player == "O" || first_player == "X"
end

puts "1     |    |    "
puts a = "      |    |    "
puts "  --------------"
puts "2     |    |    "
puts b = "      |    |    "
puts "  --------------"
puts "      |    |    "
puts c = "3     |    |    "
puts "    a    b    c "

puts "Please select the coordinates where you want to play"
puts "Example: 1b or 2c"
player_gets = gets.chomp

if player_gets == "1a"
  a = "    X  |    |    " 
end


