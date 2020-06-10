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

  def place_symbol(parameter, vallid_symbol)
    GameBoard.board[parameter] = vallid_symbol
  end

  # rubocop:disable Metrics/PerceivedComplexity,Metrics/CyclomaticComplexity,Metrics/AbcSize/
  def check_winner
    # column_array_one = [0, 3, 6]
    # column_array_two = [1, 4, 7]
    # column_array_three = [2, 5, 8]
    # diag_array_one = [0, 4, 8]
    # diag_array_two = [2, 4, 6]
    return true if GameBoard.board[0].eql? GameBoard.board[1] and GameBoard.board[1].eql? GameBoard.board[2]
    return true if GameBoard.board[3].eql? GameBoard.board[4] and GameBoard.board[4].eql? GameBoard.board[5]
    return true if GameBoard.board[6].eql? GameBoard.board[7] and GameBoard.board[7].eql? GameBoard.board[8]
    return true if GameBoard.board[0].eql? GameBoard.board[3] and GameBoard.board[3].eql? GameBoard.board[6]
    return true if GameBoard.board[1].eql? GameBoard.board[4] and GameBoard.board[4].eql? GameBoard.board[7]
    return true if GameBoard.board[2].eql? GameBoard.board[5] and GameBoard.board[5].eql? GameBoard.board[8]
    return true if GameBoard.board[0].eql? GameBoard.board[4] and GameBoard.board[4].eql? GameBoard.board[8]
    return true if GameBoard.board[2].eql? GameBoard.board[4] and GameBoard.board[4].eql? GameBoard.board[6]
    # return true if (GameBoard.board[0].eql?(GameBoard.board[1]) && GameBoard.board[1].eql?(GameBoard.board[2])) || (GameBoard.board[3].eql?(GameBoard.board[4]) && GameBoard.board[4].eql?(GameBoard.board[5])) || (GameBoard.board[6].eql?(GameBoard.board[7]) && GameBoard.board[7].eql?(GameBoard.board[8]))
    # return true if (GameBoard.board[0].eql?(GameBoard.board[3]) && GameBoard.board[3].eql?(GameBoard.board[6])) || (GameBoard.board[1].eql?(GameBoard.board[4]) && GameBoard.board[4].eql?(GameBoard.board[7])) || (GameBoard.board[2].eql?(GameBoard.board[5]) && GameBoard.board[5].eql?(GameBoard.board[8]))
    # return true if GameBoard.board[0].eql?(GameBoard.board[4]) && GameBoard.board[4].eql?(GameBoard.board[8]) || GameBoard.board[2].eql?(GameBoard.board[4]) && GameBoard.board[4].eql?(GameBoard.board[6])
    #test = all_equal(GameBoard.board[0..2], player_symbol) ||
    #all_equal(GameBoard.board[3..5], player_symbol) ||
    #all_equal(GameBoard.board[6..8], player_symbol)
     
    # end
    # all_equal(column_array_one, player_symbol) ||
    # all_equal(column_array_two, player_symbol) ||
    # all_equal(column_array_three, player_symbol) ||
    # all_equal(diag_array_one, player_symbol) ||
    # all_equal(diag_array_two, player_symbol)
  end
    # rubocop:enable Metrics/PerceivedComplexity,Metrics/CyclomaticComplexity,Metrics/AbcSize/

  #def all_equal(subarray, player_symbol)
  #  return true if subarray.uniq.size == 1 && subarray.uniq == player_symbol
  #end

  def check_free_position(index)
    GameBoard.board[index] == 'X' || GameBoard.board[index] == 'Y' ? false : true
  end

  def check_draw
    GameBoard.board.all? do |value|
      value.is_a?(String)
    end
  end
end
