class Board
  def initialize(board)
    puts "-#{board[0]}-|-#{board[1]}-|-#{board[2]}-"
    puts "-#{board[3]}-|-#{board[4]}-|-#{board[5]}-"
    puts "-#{board[6]}-|-#{board[7]}-|-#{board[8]}-"
  end
  
  def update_board(board)
    puts "-#{board[0]}-|-#{board[1]}-|-#{board[2]}-"
    puts "-#{board[3]}-|-#{board[4]}-|-#{board[5]}-"
    puts "-#{board[6]}-|-#{board[7]}-|-#{board[8]}-"
  end
end

board = []
board << 'x'
board << 'x'

Board.new(board)