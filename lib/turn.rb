board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]
def display_board(board)
  puts " #{board[0]} " "|" " #{board[1]} " "|" " #{board[2]} "
  puts "-----------"
  puts " #{board[3]} " "|" " #{board[4]} " "|" " #{board[5]} "
  puts "-----------"
  puts " #{board[6]} " "|" " #{board[7]} " "|" " #{board[8]} "
end

def input_to_index(user_input)
  user_input.to_i - 1
end

def move(board, index, char = "X")
  board[index] = char
end

def position_taken?(board, index)
  if board[index] == " "
    return false
  elsif board[index] == ""
       return false
  elsif board[index] == nil
          return false
  else board[index] == "X" ||  board[index] == "O"
        return true
  end
end

def valid_move?(board, index)

  if position_taken?(board, index) != true && index.between?(0, 8)
    return true
    end
  end

  def turn(board)
    puts "Please enter 1-9:"
    user_input = gets.strip
    if valid_move?(board, index)
      move(board, index,)
    else
    turn(board)
  end
  display_board(board)
end
