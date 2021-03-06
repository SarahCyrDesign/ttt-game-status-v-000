# Helper Method
#require "pry"
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant

WIN_COMBINATIONS = [
  [0,1,2],
  [3,4,5],
  [6,7,8],
  [0,3,6],
  [1,4,7],
  [2,5,8],
  [0,4,8],
  [2,4,6]
]

def won?(board)
WIN_COMBINATIONS.detect do |win_combination|

board[win_combination[0]] == board[win_combination[1]] && board[win_combination[1]] == board[win_combination[2]] && position_taken?(board, win_combination[0])

  end
end


def full?(board)
  board.all? do|index|
    index == "X" || index == "O"
  end
end


def draw?(board)
  !won?(board)
end


def over?(board)
  !draw?(board) || won?(board) || full?(board)
end


def winner(board)

  if won?(board)
    winning_index_array = won?(board) #=> [0,1,2]
    board[winning_index_array[0]]
  end
end


#binding.pry
