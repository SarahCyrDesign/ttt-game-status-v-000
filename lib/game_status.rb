# Helper Method
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
WIN_COMBINATIONS.each do |win_combination|
  win_combination.each do |win_index|
    win_index_1 = win_combination[0]
    win_index_2 = win_combination[1]
    win_index_3 = win_combination[2]
    win_index_4 = win_combination[3]
    win_index_5 = win_combination[4]
    win_index_6 = win_combination[5]
    win_index_7 = win_combination[6]
    win_index_8 = win_combination[7]
    position_1 = board[win_index_1]
    position_2 = board[win_index_2]
    position_3 = board[win_index_3]
    position_4 = board[win_index_4]
    position_5 = board[win_index_5]
    position_6 = board[win_index_6]
    position_7 = board[win_index_7]
    position_8 = board[win_index_8]
   if position_1 == "X" && position_2 == "X" && position_3 == "X"
     return win_combination[0] # return the win_combination indexes that won.
   elsif position_1 == "X" && position_2 == "X" && position_3 == "X"
     return win_combination[1]
   elsif position_1 == "X" && position_2 == "X" && position_3 == "X"
     return win_combination[2]
   elsif position_1 == "X" && position_2 == "X" && position_3 == "X"
     return win_combination[3]
   elsif position_1 == "X" && position_2 == "X" && position_3 == "X"
     return win_combination[4]
   elsif position_1 == "X" && position_2 == "X" && position_3 == "X"
     return win_combination[5]
   elsif position_1 == "X" && position_2 == "X" && position_3 == "X"
     return win_combination[6]
   elsif position_1 == "X" && position_2 == "X" && position_3 == "X"
     return win_combination[7]
   else
     false
   end
  end
end


def full?

end


def draw?

end



def over?

end


def winner

end


#def WIN_COMBINATIONS(board)
#  if board[top_row_win[0]] == "X" && board[top_row_win[1]] == "X" && board[top_row_win[2]] == "X"
#    "X won in the top row"
#  end
