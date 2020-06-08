class GameCheck
    def check_winner(board, player)

      if (board[0].eql?(board[1]) && board[1].eql?(board[2])) || (board[3].eql?(board[4]) && board[4].eql?(board[5])) || (board[6].eql?(board[7]) && board[7].eql?(board[8]))
        return true
      elsif (board[0].eql?(board[3]) && board[3].eql?(board[6])) || (board[1].eql?(board[4]) && board[4].eql?(board[7])) || (board[2].eql?(board[5]) && board[5].eql?(board[8]))
        return true
        
      elsif board[0].eql?(board[4]) && board[4].eql?(board[8]) || board[2].eql?(board[4]) && board[4].eql?(board[6])
        return true
      end
    end
    
    def check_draw(board)
        board.all? do |value|
             value.is_a?(String)
        end
    end

    def vallidate_position(data)
        pattern = /[0-8]/
        return data.match? pattern 
    end
    
    def check_free_position(board, index)
      if board[index].class == String
        return false
      else
        return true
      end
    end

    def vallidate_name(name)
       pattern = /^[a-zA-Z]*$/
       valid_name = name.match? pattern
       if valid_name && name.length >= 3
          return true
       else
          return false
       end
    end

    def vallidate_symbol(symbol)
      if symbol == "X" || symbol == "Y"
        return true
      else
        return false
      end
    end
end