class GameBoard
  @@board = [0, 1, 2, 3, 4, 5, 6, 7, 8]

  def display_board
                " 
                  #{@@board[0]}  |  #{@@board[1]}  |  #{@@board[2]}\n
                =================
                  #{@@board[3]}  |  #{@@board[4]}  |  #{@@board[5]}\n
                =================
                  #{@@board[6]}  |  #{@@board[7]}  |  #{@@board[8]}\n"
  end

  def place_symbol(parameter, vallid_symbol)
    @@board[parameter] = vallid_symbol
  end

  def check_winner
    if (@@board[0].eql?(@@board[1]) && @@board[1].eql?(@@board[2])) || (@@board[3].eql?(@@board[4]) && @@board[4].eql?(@@board[5])) || (@@board[6].eql?(@@board[7]) && @@board[7].eql?(@@board[8]))
      return true
    elsif (@@board[0].eql?(@@board[3]) && @@board[3].eql?(@@board[6])) || (@@board[1].eql?(@@board[4]) && @@board[4].eql?(@@board[7])) || (@@board[2].eql?(@@board[5]) && @@board[5].eql?(@@board[8]))
      return true
    elsif @@board[0].eql?(@@board[4]) && @@board[4].eql?(@@board[8]) || @@board[2].eql?(@@board[4]) && @@board[4].eql?(@@board[6])
      return true
    end
  end

  def check_free_position(index)
    if @@board[index] == 'X' || @@board[index] ==  'Y'
      return false
    else
      return true
    end
  end
    
  def check_draw
    @@board.all? do |value|
      value.is_a?(String)
    end
  end
end
