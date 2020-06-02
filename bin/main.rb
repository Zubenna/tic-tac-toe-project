#!/usr/bin/env ruby

# The following classes will be implemented Main, player, and Board

puts 'Welcome to TIC-TAC-TOE GAME'
puts
puts 'Player one, enter your name:'
player_one = gets.chomp
puts 'Player two, enter your name:'
player_two = gets.chomp
first_player = ''
second_player = ''
loop do
  puts "Current player - #{player_one}, select 'X' or 'O'"
  first_player = gets.chomp
  if first_player == 'X'
    second_player = 'O'
    puts "#{player_one} selected #{first_player} and #{player_two} selected #{second_player}"
  elsif first_player == 'O'
    second_player = 'X'
    puts "#{player_one} please selected #{first_player} and #{player_two} selected #{second_player}"
  else
    puts 'Please select X or O'
  end
  break if first_player == 'O' || second_player == 'O'
end
board = [[1, 2, 3], [4, 5, 6], [7, 8, 9]]
player_choose = ''
loop do
  puts "  #{board[0][0]}  |  #{board[0][1]}  |  #{board[0][2]}"
  puts '================='
  puts "  #{board[1][0]}  |  #{board[1][1]}  |  #{board[1][2]}"
  puts '================='
  puts "  #{board[2][0]}  |  #{board[2][1]}  |  #{board[2][2]}"

  puts "#{player_one}: please select the number where you want to play from the board"
  puts 'Enter 0 to quit'
  player_choose = gets.chomp
  player_choose = player_choose.to_i
  puts 'Checking if the selected position is available'
  if player_choose <= 3 && player_choose >= 1
    if board[0][player_choose - 1].is_a?(String)
      puts "You've already played on this position"
    else
      board[0][player_choose - 1] = first_player
    end
    board[0].all?(first_player) ? puts "#{player_one} is the winner!";
  elsif player_choose <= 6 && player_choose > 3
    if board[1][player_choose - 4].is_a?(String)
      puts "You've already played on this position"
    else
    board[1][player_choose - 4] = first_player
    end
    elsif player_choose <= 9 && player_choose > 6
      if board[2][player_choose - 7].is_a?(String)
        puts "You've already played on this position"
      else
      board[2][player_choose - 7] = first_player
      end
    end
  break if (board[0].all?(String) && board[1].all?(String) && board[2].all?(String)) || player_choose.zero?

  puts "  #{board[0][0]}  |  #{board[0][1]}  |  #{board[0][2]}"
  puts '================='
  puts "  #{board[1][0]}  |  #{board[1][1]}  |  #{board[1][2]}"
  puts '================='
  puts "  #{board[2][0]}  |  #{board[2][1]}  |  #{board[2][2]}"

  puts "#{player_two}: please select the number where you want to play from the board"
  playert_choose = gets.chomp
  playert_choose = playert_choose.to_i
  if playert_choose <= 3 && playert_choose >= 1
    board[0][playert_choose - 1] = second_player
  elsif playert_choose <= 6 && playert_choose > 3
    board[1][playert_choose - 4] = second_player
  elsif playert_choose <= 9 && playert_choose > 6
    board[2][playert_choose - 7] = second_player
  end
  break if (board[0].all?(String) && board[1].all?(String) && board[2].all?(String)) || player_choose.zero?
end
if player_choose.zero?
  puts "Thank you for playing this game"
else
  puts 'It\'s a draw!'
end
