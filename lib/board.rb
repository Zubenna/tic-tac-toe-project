class Board
    def check_winner(board, player)
      if (board[0].eql?(board[1]) && board[1].eql?(board[2])) || (board[3].eql?(board[4]) && board[4].eql?(board[5])) || (board[6].eql?(board[7]) && board[7].eql?(board[8]))
          if (board[0].eql?(first_player) && board[1].eql?(first_player) && board[2].eql?(first_player)) || (board[3].eql?(first_player) && board[4].eql?(first_player) && board[5].eql?(first_player)) || (board[6].eql?(first_player) && board[7].eql?(first_player) && board[8].eql?(first_player))
          #   puts "#{player_one} is the Winner!"
          return true
          end
      elsif (board[0].eql?(board[3]) && board[3].eql?(board[6])) || (board[1].eql?(board[4]) && board[4].eql?(board[7])) || (board[2].eql?(board[5]) && board[5].eql?(board[8]))
          if (board[0].eql?(first_player) && board[3].eql?(first_player) && board[6].eql?(first_player)) || (board[1].eql?(first_player) && board[4].eql?(first_player) && board[7].eql?(first_player)) || (board[2].eql?(first_player) && board[5].eql?(first_player) && board[8].eql?(first_player))
          return true
          end
          #   puts "#{player_one} is the Winner!"
      elsif board[0].eql?(board[4]) && board[4].eql?(board[8]) || board[2].eql?(board[4]) && board[4].eql?(board[6])
          if board[0].eql?(player) || board[2].eql?(player)
            return true
          end
          #   puts "#{player_one} is the Winner!"
      end
    end
end