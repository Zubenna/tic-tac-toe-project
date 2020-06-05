class Board
    def check_winner(board, player)
      if (board[0].eql?(board[1]) && board[1].eql?(board[2])) || (board[3].eql?(board[4]) && board[4].eql?(board[5])) || (board[6].eql?(board[7]) && board[7].eql?(board[8]))
          if (board[0].eql?(player) && board[1].eql?(player) && board[2].eql?(player)) || (board[3].eql?(player) && board[4].eql?(player) && board[5].eql?(player)) || (board[6].eql?(player) && board[7].eql?(player) && board[8].eql?(player))
          return true
          end
      elsif (board[0].eql?(board[3]) && board[3].eql?(board[6])) || (board[1].eql?(board[4]) && board[4].eql?(board[7])) || (board[2].eql?(board[5]) && board[5].eql?(board[8]))
          if (board[0].eql?(player) && board[3].eql?(player) && board[6].eql?(player)) || (board[1].eql?(player) && board[4].eql?(player) && board[7].eql?(player)) || (board[2].eql?(player) && board[5].eql?(player) && board[8].eql?(player))
          return true
          end
      elsif board[0].eql?(board[4]) && board[4].eql?(board[8]) || board[2].eql?(board[4]) && board[4].eql?(board[6])
          if (board[0].eql?(player) && board[4].eql?(player) && board[8].eql?(player)) || (board[2].eql?(player) && board[4].eql?(player) && board[6].eql?(player))
            return true
          end
      end
    end
    def check_winner_two(board, playert)
      if (board[0].eql?(board[1]) && board[1].eql?(board[2])) || (board[3].eql?(board[4]) && board[4].eql?(board[5])) || (board[6].eql?(board[7]) && board[7].eql?(board[8]))
        if (board[0].eql?(playert) && board[1].eql?(playert) && board[2].eql?(playert)) || (board[3].eql?(playert) && board[4].eql?(playert) && board[5].eql?(playert)) || (board[6].eql?(playert) && board[7].eql?(playert) && board[8].eql?(playert))
        return true
        end
    elsif (board[0].eql?(board[3]) && board[3].eql?(board[6])) || (board[1].eql?(board[4]) && board[4].eql?(board[7])) || (board[2].eql?(board[5]) && board[5].eql?(board[8]))
        if (board[0].eql?(playert) && board[3].eql?(playert) && board[6].eql?(playert)) || (board[1].eql?(playert) && board[4].eql?(playert) && board[7].eql?(playert)) || (board[2].eql?(playert) && board[5].eql?(playert) && board[8].eql?(playert))
        return true
        end
    elsif board[0].eql?(board[4]) && board[4].eql?(board[8]) || board[2].eql?(board[4]) && board[4].eql?(board[6])
        if (board[0].eql?(playert) && board[4].eql?(playert) && board[8].eql?(playert)) || (board[2].eql?(playert) && board[4].eql?(playert) && board[6].eql?(playert))
          return true
        end
    end
    end
end