def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

# code your input_to_index and move method here!
  def input_to_index(user_input)
    index = user_input.index
    index -= l
    return index
  end
  
  # checks user input to see if it is a reall number and if the position is already taken
  
  def valid_move?(board, index)
    def position_taken?(array, ind)
      if array [ind] == " " || array [ind] == "" || array [ind] == nil
        return false
      else
        return true
      end
    end
    
  def on_board?(num)
    if num.between?(0,8) == true
      return true
    else
      return false
    end
  end
  
    if (position_taken?)(board, index) == false && (on_board?(index) == true)
      return true
    else
      return false
    end
  end
  
  #Takes user input and places the X or O in that position
  
  def move(board, index, character = "X")
    board[index] = character
    return board
  end
  
  #Asks user for number, check if valid, ask again if not. 
  def turn (board)
    puts "Please enter 1-9:"
    num = gets.chomp
    index = input_to_index(num)
    if valid_move?(board, index) == true
      move(board, index)
      display_board(board)
    else
      turn(board)
    end
  end