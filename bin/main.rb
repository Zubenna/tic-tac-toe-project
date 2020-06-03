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
  puts "Current player - #{player_one}, select 'X' or 'Y'"
  first_player = gets.chomp.upcase
  if first_player == 'X'
    second_player = 'Y'
    puts "#{player_one} selected #{first_player} and #{player_two} selected #{second_player}"
  elsif first_player == 'Y'
    second_player = 'X'
    puts "#{player_one} selected #{first_player} and #{player_two} selected #{second_player}"
  else
    puts 'Please select X or Y'
  end
  break if first_player == 'Y' || second_player == 'Y'
end
board = [0, 1, 2, 3, 4, 5, 6, 7, 8]
player_choose = ''
loop do
  puts "  #{board[0]}  |  #{board[1]}  |  #{board[2]}"
  puts '================='
  puts "  #{board[3]}  |  #{board[4]}  |  #{board[5]}"
  puts '================='
  puts "  #{board[6]}  |  #{board[7]}  |  #{board[8]}"
  if (board[0].eql?(board[1]) && board[1].eql?(board[2])) || (board[3].eql?(board[4]) && board[4].eql?(board[5])) || (board[6].eql?(board[7]) && board[7].eql?(board[8]))
    if board[0].eql?(first_player) || board[3].eql?(first_player) || board[6].eql?(first_player)
      puts "#{player_one} is the Winner!"
      break
    elsif board[0].eql?(second_player) || board[3].eql?(second_player) || board[6].eql?(second_player)
      puts "#{player_two} is the Winner!"
      break
    end
  elsif (board[0].eql?(board[3]) && board[3].eql?(board[6])) || (board[1].eql?(board[4]) && board[4].eql?(board[7])) || (board[2].eql?(board[5]) && board[5].eql?(board[8]))
    if board[0].eql?(first_player) || board[1].eql?(first_player) || board[2].eql?(first_player)
      puts "#{player_one} is the Winner!"
      break
    elsif board[0].eql?(second_player) || board[1].eql?(second_player) || board[2].eql?(second_player)
      puts "#{player_two} is the Winner!"
      break
    end
  elsif board[0].eql?(board[4]) && board[4].eql?(board[8]) || board[2].eql?(board[4]) && board[4].eql?(board[6])
    if board[0].eql?(first_player) || board[2].eql?(first_player)
      puts "#{player_one} is the Winner!"
      break
    elsif board[0].eql?(second_player) || board[2].eql?(second_player)
      puts "#{player_two} is the Winner!"
      break
    end
  elsif board.all?(String)
    puts 'It is a draw'
    break
  end

  loop do
    puts "#{player_one}: please select the number where you want to play from the board"
    player_choose = gets.chomp
    player_choose = player_choose.to_i
    if board[player_choose].is_a?(String)
      puts
      puts 'The number is taken, please select another one!'
      false
    elsif board[player_choose].is_a?(Numeric)
      board[player_choose] = first_player
      break
    end
  end

  puts "  #{board[0]}  |  #{board[1]}  |  #{board[2]}"
  puts '================='
  puts "  #{board[3]}  |  #{board[4]}  |  #{board[5]}"
  puts '================='
  puts "  #{board[6]}  |  #{board[7]}  |  #{board[8]}"
  if (board[0].eql?(board[1]) && board[1].eql?(board[2])) || (board[3].eql?(board[4]) && board[4].eql?(board[5])) || (board[6].eql?(board[7]) && board[7].eql?(board[8]))
    if board[0].eql?(first_player) || board[3].eql?(first_player) || board[6].eql?(first_player)
      puts "#{player_one} is the Winner!"
      break
    elsif board[0].eql?(second_player) || board[3].eql?(second_player) || board[6].eql?(second_player)
      puts "#{player_two} is the Winner!"
      break
    end
  elsif (board[0].eql?(board[3]) && board[3].eql?(board[6])) || (board[1].eql?(board[4]) && board[4].eql?(board[7])) || (board[2].eql?(board[5]) && board[5].eql?(board[8]))
    if board[0].eql?(first_player) || board[1].eql?(first_player) || board[2].eql?(first_player)
      puts "#{player_one} is the Winner!"
      break
    elsif board[0].eql?(second_player) || board[1].eql?(second_player) || board[2].eql?(second_player)
      puts "#{player_two} is the Winner!"
      break
    end
  elsif board[0].eql?(board[4]) && board[4].eql?(board[8]) || board[2].eql?(board[4]) && board[4].eql?(board[6])
    if board[0].eql?(first_player) || board[2].eql?(first_player)
      puts "#{player_one} is the Winner!"
      break
    elsif board[0].eql?(second_player) || board[2].eql?(second_player)
      puts "#{player_two} is the Winner!"
      break
    end
  elsif board.all?(String)
    puts 'It is a draw'
    break
  end

  loop do
    puts "#{player_two}: please select the number where you want to play from the board"
    playert_choose = gets.chomp
    playert_choose = playert_choose.to_i
    if board[playert_choose].is_a?(String)
      puts
      puts 'The number is taken, please select another one!'
      false
    elsif board[playert_choose].is_a?(Numeric)
      board[playert_choose] = second_player
      break
    end
  end
end
