class GameBoard
  @board = [0, 1, 2, 3, 4, 5, 6, 7, 8]

  class << self
    attr_reader :board
  end

  def display_board
    "
    #{GameBoard.board[0]}  |  #{GameBoard.board[1]}  |  #{GameBoard.board[2]}\n
  =================
    #{GameBoard.board[3]}  |  #{GameBoard.board[4]}  |  #{GameBoard.board[5]}\n
  =================
    #{GameBoard.board[6]}  |  #{GameBoard.board[7]}  |  #{GameBoard.board[8]}\n"
  end

  

  def assign_symbol(parameter, player_one, player_two)
    if parameter == 'X'
      second_symbol = 'Y'
      "#{player_one} selected #{parameter} and #{player_two} now takes #{second_symbol}"
    elsif parameter == 'Y'
      second_symbol = 'X'
      "#{player_one} selected #{parameter} and #{player_two} now takes #{second_symbol}"
    end
  end

  def check_winner(player_symbol)
    return true if column_diag_check(player_symbol) == true
    all_equal_row(GameBoard.board[0..2], player_symbol) ||
    all_equal_row(GameBoard.board[3..5], player_symbol) ||
    all_equal_row(GameBoard.board[6..8], player_symbol)
  end

  def column_diag_check(player_symbol)
      all_equal(GameBoard.board[0], player_symbol) && 
      all_equal(GameBoard.board[3], player_symbol) && 
      all_equal(GameBoard.board[6], player_symbol) ||
      all_equal(GameBoard.board[1], player_symbol) &&
      all_equal(GameBoard.board[4], player_symbol) && 
      all_equal(GameBoard.board[7], player_symbol) || 
      all_equal(GameBoard.board[2], player_symbol) &&
      all_equal(GameBoard.board[5], player_symbol) && 
      all_equal(GameBoard.board[8], player_symbol) ||
      all_equal(GameBoard.board[0], player_symbol) &&
      all_equal(GameBoard.board[4], player_symbol) && 
      all_equal(GameBoard.board[8], player_symbol) ||
      all_equal(GameBoard.board[0], player_symbol) &&
      all_equal(GameBoard.board[4], player_symbol) && 
      all_equal(GameBoard.board[8], player_symbol) 
  end

  def all_equal_row(subarray, player_symbol)
     unique_array = subarray.uniq
     array_value = ""
     array_value = unique_array[0] if unique_array.size == 1
     return true if array_value.eql?(player_symbol)
  end

  def all_equal(parameter, player_symbol)
    return true if parameter.eql?(player_symbol)
  end
  
  def check_free_position(index)
    GameBoard.board[index] == 'X' || GameBoard.board[index] == 'Y' ? false : true
  end

  def vallidate_position(data)
    pattern = /[0-8]/
    data.length == 1 && data.match?(pattern) ? true : false
  end

  def check_draw
    GameBoard.board.all? do |value|
      value.is_a?(String)
    end
  end

  def play(player_choose, vallid_symbol)
    GameBoard.board[player_choose] = vallid_symbol if player_choose.is_a?(Numeric)
  end
  
end
