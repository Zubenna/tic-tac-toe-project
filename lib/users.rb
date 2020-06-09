require_relative '../lib/check_game'
require_relative '../lib/board'
class Users
  def select_symbol(player_one, player_two)
    check_validity = GameCheck.new
    first_symbol = gets.chomp.upcase
    vallid_symbol = check_validity.vallidate_symbol(first_symbol)
    if vallid_symbol == true
      return first_symbol
    end
  end
  
  def assign_symbol(parameter, player_one, player_two)
    if parameter == 'X'
      second_symbol = 'Y'
      return "#{player_one} selected #{parameter} and #{player_two} now takes #{second_symbol}"
    elsif parameter == 'Y'
      second_symbol = 'X'
      return "#{player_one} selected #{parameter} and #{player_two} now takes #{second_symbol}"
    end
  end
   
  def toggle_symbol(parameter)
    return "Y" if parameter == "X"
    return "X" if parameter == "Y"
  end
  
  def play(player_choose, vallid_symbol)
    #new_board = [0, 1, 2, 3, 4, 5, 6, 7, 8]
    board = GameBoard.new
    if player_choose.is_a?(Numeric)
      board.place_symbol(player_choose, vallid_symbol)
    end
  end
end