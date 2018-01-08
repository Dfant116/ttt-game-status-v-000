# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

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
  WIN_COMBINATIONS.each do |win_combo|
    if check_win_combination?(board, "X", win_combo)
      return win_combo
    elsif check_win_combination?(board, "O", win_combo)
      return win_combo
    else
      return false
    end
  end
end
