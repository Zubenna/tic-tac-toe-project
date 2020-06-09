class GameBoard

  @board = [0, 1, 2, 3, 4, 5, 6, 7, 8]

  def self.board
    @board
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

  def check_winner
    if (GameBoard.board[0].eql?(GameBoard.board[1]) && GameBoard.board[1].eql?(GameBoard.board[2])) || (GameBoard.board[3].eql?(GameBoard.board[4]) && GameBoard.board[4].eql?(GameBoard.board[5])) || (GameBoard.board[6].eql?(GameBoard.board[7]) && GameBoard.board[7].eql?(GameBoard.board[8]))
      return true
    elsif (GameBoard.board[0].eql?(GameBoard.board[3]) && GameBoard.board[3].eql?(GameBoard.board[6])) || (GameBoard.board[1].eql?(GameBoard.board[4]) && GameBoard.board[4].eql?(GameBoard.board[7])) || (GameBoard.board[2].eql?(GameBoard.board[5]) && GameBoard.board[5].eql?(GameBoard.board[8]))
      return true
    elsif GameBoard.board[0].eql?(GameBoard.board[4]) && GameBoard.board[4].eql?(GameBoard.board[8]) || GameBoard.board[2].eql?(GameBoard.board[4]) && GameBoard.board[4].eql?(GameBoard.board[6])
      return true
    end
  end

  def check_free_position(index)
    if GameBoard.board[index] == 'X' || GameBoard.board[index] ==  'Y'
      return false
    else
      return true
    end
  end
    
  def check_draw
    GameBoard.board.all? do |value|
      value.is_a?(String)
    end
  end
end
