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
  def check_winner(player_symbol)
    #  column_one = ["X", "X", "X"]
    # GameBoard.board = [1, 4, 7]
    # column_array_three = [2, 5, 8]
    # diag_array_one = [0, 4, 8]
    # diag_array_two = [2, 4, 6]
    # return true if (GameBoard.board[0].eql?(GameBoard.board[1]) && GameBoard.board[1].eql?(GameBoard.board[2])) || (GameBoard.board[3].eql?(GameBoard.board[4]) && GameBoard.board[4].eql?(GameBoard.board[5])) || (GameBoard.board[6].eql?(GameBoard.board[7]) && GameBoard.board[7].eql?(GameBoard.board[8]))
    # return true if (GameBoard.board[0].eql?(GameBoard.board[3]) && GameBoard.board[3].eql?(GameBoard.board[6])) || (GameBoard.board[1].eql?(GameBoard.board[4]) && GameBoard.board[4].eql?(GameBoard.board[7])) || (GameBoard.board[2].eql?(GameBoard.board[5]) && GameBoard.board[5].eql?(GameBoard.board[8]))
    # return true if GameBoard.board[0].eql?(GameBoard.board[4]) && GameBoard.board[4].eql?(GameBoard.board[8]) || GameBoard.board[2].eql?(GameBoard.board[4]) && GameBoard.board[4].eql?(GameBoard.board[6])
    all_equal(GameBoard.board[0..2], player_symbol) ||
    all_equal(GameBoard.board[3..5], player_symbol) ||
    all_equal(GameBoard.board[6..8], player_symbol)
    # testA = all_equal(column_one, player_symbol)
    # puts "returned value from all_equal is #{testA}"
     
    # # end
    # all_equal(column_array_one, player_symbol) ||
    # all_equal(column_array_two, player_symbol) ||
    # all_equal(column_array_three, player_symbol) ||
    # all_equal(diag_array_one, player_symbol) ||
    # all_equal(diag_array_two, player_symbol)
  end
    # rubocop:enable Metrics/PerceivedComplexity,Metrics/CyclomaticComplexity,Metrics/AbcSize/

  def all_equal(subarray, player_symbol)
     test_u = subarray.uniq
     sample = ""
    # puts test_u.size.class
    # 4puts player_symbol.class
    sample = test_u[0] if test_u.size == 1
    #  puts player_symbol
    if sample.eql?(player_symbol)
      # puts "#{sample } equals #{player_symbol}"
      return true
    end
  end

  def check_free_position(index)
    GameBoard.board[index] == 'X' || GameBoard.board[index] == 'Y' ? false : true
  end

  def check_draw
    GameBoard.board.all? do |value|
      value.is_a?(String)
    end
  end
end
