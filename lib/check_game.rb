class GameCheck
    def check_winner(board, player)
      return true if (board[0].eql?(board[1]) && board[1].eql?(board[2])) || (board[3].eql?(board[4]) && board[4].eql?(board[5])) || (board[6].eql?(board[7]) && board[7].eql?(board[8]))
          # if board[0].eql?(player) || board[3].eql?(player) || board[6].eql?(player)
          #   puts "#{player_one} is the Winner!"
          
          # end
      return true if (board[0].eql?(board[3]) && board[3].eql?(board[6])) || (board[1].eql?(board[4]) && board[4].eql?(board[7])) || (board[2].eql?(board[5]) && board[5].eql?(board[8]))
          # if board[0].eql?(player) || board[1].eql?(player) || board[2].eql?(player)
          # return true
          # end
          #   puts "#{player_one} is the Winner!"
      return true if board[0].eql?(board[4]) && board[4].eql?(board[8]) || board[2].eql?(board[4]) && board[4].eql?(board[6])
          # if board[0].eql?(player) || board[2].eql?(player)
            # return true
          # end
          #   puts "#{player_one} is the Winner!"
      end
    
end