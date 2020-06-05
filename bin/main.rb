#!/usr/bin/env ruby

require_relative '../lib/start_game'
require_relative '../lib/board'

class Game
    
    @@board = [0, 1, 2, 3, 4, 5, 6, 7, 8]
    @player_one 
    @player_two
    def start_game
      puts 'Welcome to TIC-TAC-TOE GAME'
      puts
      display_board
      puts
      puts 'Player one, enter your name:'
      player_one = gets.chomp
      puts 'Player two, enter your name:'
      player_two = gets.chomp
      select_symbol(player_one, player_two)
    end
   
    def display_board
      puts "  #{@@board[0]}  |  #{@@board[1]}  |  #{@@board[2]}"
      puts '================='
      puts "  #{@@board[3]}  |  #{@@board[4]}  |  #{@@board[5]}"
      puts '================='
      puts "  #{@@board[6]}  |  #{@@board[7]}  |  #{@@board[8]}"
    end
  
    def select_symbol(player_one, player_two)
      first_player = ''
      second_player = ''
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
          take_turn(first_player, second_player, player_one, player_two)
          # break if first_player == 'Y' || second_player == 'Y'
    end
  
    def take_turn(first_player, second_player, player_one, player_two)
      board_check = Board.new
      display_board
      loop do
          # controler = true
          play(first_player, player_one) 
          if board_check.check_winner(@@board, first_player)
              puts "#{player_one} is the Winner!"
              display_board
              break
          end
          display_board
          play(second_player, player_two)
          if board_check.check_winner_two(@@board, second_player)
            puts "#{player_two} is the Winner!"
            display_board
            break
          end
          display_board
          # break if !controler
       end
  
    end
  
    def play(player, turn)
          board_check = Board.new
          puts "#{turn}: please select the number where you want to play from the board"
          player_choose = gets.chomp
          player_choose = player_choose.to_i
          if board_check.select_number(@@board, player_choose)
            puts
            puts 'The number is taken, please select another one!'
            false
          end
          if @@board[player_choose].is_a?(Numeric)
            @@board[player_choose] = player
          end
      end
  end

start = Game.new
start.start_game

  
  

