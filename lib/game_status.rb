# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0, 1, 2],
  [3, 4, 5],
  [6, 7, 8],
  [0, 3, 6],
  [1, 4, 7],
  [2, 5, 8],
  [0, 4, 8],
  [2, 4, 6],
]

def won?(board)
  WIN_COMBINATIONS.find do |indexes|
    (board[indexes[0]].upcase == "X" || board[indexes[1]].upcase == "O") && (board[indexes[0]] == board[indexes[1]]) && (board[indexes[0]] == board[indexes[2]])
  end
end

def full?(board)
  board.none? { |val| val.upcase != 'X' && val.upcase != 'O'}
end

def draw?(board)
  full?(board) && !won?(board)
end

def over?(board)
  won?(board) || full?(board)
end

def winner(board)
  won = won?(board)
  if won
    board[won[0]]
  end
end
