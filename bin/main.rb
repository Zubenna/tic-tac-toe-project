#!/usr/bin/env ruby

# Load the game
# Set the game board
# Load the Players

puts 'Player one select "x" or "o"'
first_player = gets.chomp
second_player = ""
if first_player == 'X'
   second_player = 'O'
puts "Player one selected #{first_player} and player two selected #{second_player}"
elsif first_player == 'O'
second_player = 'X'
puts "Player one selected #{first_player} and player two selected #{second_player}"
end

