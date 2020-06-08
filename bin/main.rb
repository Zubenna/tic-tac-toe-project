#!/usr/bin/env ruby
require_relative '../lib/check_game'

class Game
    @@board = [0, 1, 2, 3, 4, 5, 6, 7, 8]
      def start_game
      check_validity = GameCheck.new
      puts 'Welcome to TIC-TAC-TOE GAME'
      puts
      display_board
      player_one = ""
      player_two = ""
      puts
      loop do
        puts 'Player one, enter your name:'
        player_one = gets.chomp
        valid_name_one = check_validity.vallidate_name(player_one)
        puts "Invalid!! Name must be alphabets not less than 3 letters" if valid_name_one == false
        break if valid_name_one == true
      end
      loop do
        puts 'Player two, enter your name:'
        player_two = gets.chomp
        valid_name_two = check_validity.vallidate_name(player_two)
        puts "Invalid!! Name must be alphabets not less than 3 letters" if valid_name_two == false
        break if valid_name_two == true 
      end
      select_symbol(player_one, player_two)
    end
     
    private
    def display_board
      puts "  #{@@board[0]}  |  #{@@board[1]}  |  #{@@board[2]}"
      puts '================='
      puts "  #{@@board[3]}  |  #{@@board[4]}  |  #{@@board[5]}"
      puts '================='
      puts "  #{@@board[6]}  |  #{@@board[7]}  |  #{@@board[8]}"
    end
  
    def select_symbol(player_one, player_two)
      first_symbol = ''
      second_symbol = ''
      check_validity = GameCheck.new
      loop do
        puts "First player - #{player_one}, select 'X' or 'Y'"
        first_symbol = gets.chomp.upcase
        vallid_symbol = check_validity.vallidate_symbol(first_symbol)
        if vallid_symbol == false
          puts "Invalid!!!, Select X or Y"
        end
        break if vallid_symbol == true
      end
          if first_symbol == 'X'
            second_symbol = 'Y'
            puts "#{player_one} selected #{first_symbol} and #{player_two} now takes #{second_symbol}"
            puts
          elsif first_symbol == 'Y'
            second_symbol = 'X'
            puts "#{player_one} selected #{first_symbol} and #{player_two} now takes #{second_symbol}"
            puts
          end
        take_turn(first_symbol, second_symbol, player_one, player_two)
    end
  
    def take_turn(first_symbol, second_symbol, player_one, player_two)
      check_validity = GameCheck.new
       loop do
          controller = check_validity.check_winner(@@board, first_symbol)
          if controller == true
            puts "#{player_one} is the Winner!" 
          break
          end
          play(first_symbol, player_one)
          display_board
          controller = check_validity.check_winner(@@board, second_symbol)
            if controller == true
               puts "#{player_two} is the Winner!"
               break
            end 
          play(second_symbol, player_two)
          display_board
          draw_validator = check_validity.check_draw(@@board)
            if draw_validator == true
               puts 'Waoo!! It is a tie'
               break
            end
          play(second_symbol, player_two)
          display_board
        end
    end
    def play(player, turn)
      check_validity = GameCheck.new
      player_choose = ""
      loop do
        puts "#{turn}: Please select the position where you want to play from the board"
        player_choose = gets.chomp
        check_number = check_validity.vallidate_position(player_choose)
        if check_number == false
          puts 'Your selection is invalid, Please enter digit between 0 and 8'
        end
        player_choose = player_choose.to_i
        check_position = check_validity.check_free_position(@@board, player_choose) 
        if check_position == false
          puts 'The position is taken, please select another one!'
        end
        break if check_position == true && check_number == true
      end
        if @@board[player_choose].is_a?(Numeric)
          @@board[player_choose] = player
        end
    end
  end
game = Game.new
game.start_game
  
