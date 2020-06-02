#!/usr/bin/env ruby

# The following classes will be implemented Main, player, and Board

puts 'Welcome to TIC-TAC-TOE GAME'
puts
first_player = ''
second_player = ''
loop do
  puts 'Player one select "X" or "O"'
  first_player = gets.chomp
  if first_player == 'X'
    second_player = 'O'
    puts "Player one selected #{first_player} and player two selected #{second_player}"
  elsif first_player == 'O'
    second_player = 'X'
    puts "Player one selected #{first_player} and player two selected #{second_player}"
  else
    puts 'Please select X or O'
  end
  break if first_player == 'O' || second_player == 'O'
end
loop do
  board = [[1, 2, 3], [4, 5, 6], [7, 8, 9]]
  puts "  #{board[0][0]}  |  #{board[0][1]}  |  #{board[0][2]}"
  puts '================='
  puts "  #{board[1][0]}  |  #{board[1][1]}  |  #{board[1][2]}"
  puts '================='
  puts "  #{board[2][0]}  |  #{board[2][1]}  |  #{board[2][2]}"

  puts 'Player one: please select the number where you want to play from the board'
  puts 'Enter 0 to quit'
  player_choose = gets.chomp
  player_choose = player_choose.to_i

  if player_choose <= 3 && player_choose >= 1
    board[0][player_choose - 1] = first_player
    board = board
  elsif player_choose <= 6 && player_choose > 3
    board[1][player_choose - 1] = first_player
    board = board
  elsif player_choose <= 9 && player_choose > 6
    board[2][player_choose - 1] = first_player
    board = board
  end

  break if board.all?(String) || player_choose.zero?
end
