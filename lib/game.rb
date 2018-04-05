class Game
  attr_accessor :board, :player_1, :player_2, :user_input

  def initialize(player_1, player_2, board)
    @player_1 = player_1
    @player_2 = player_2
    @board = board
    @board.display
  end

  def current_player
    @board.turn_count.odd? ? @player_2 : @player_1
  end

  def won?
    if check_row
      return true
    elsif check_col
      return true
    elsif check_diag
      return true
    end
    return false
  end

  def draw?
    @board.full? && !won? ? true : false
  end

  def over?
    (won? || draw?) ? true : false
  end

  def winner
    if current_player == @player_2
      return @player_1.token
    else
      return @player_2.token
    end
  end

  def turn
    puts "Please enter a number 1 - 9:"
    @user_input = current_player.move(@board)

    if @board.valid_move?(@user_input)
      @board.update(@user_input, current_player)
    else puts "Please enter a number 1-9:"
      @board.display
      turn
    end

    @board.display
  end

  def play
    turn until over?
    if won?
      puts "#{winner} has won"
    elsif draw?
      puts "Cat's Game!"
    end
  end

  private

  def check_row
    cells = @board.cells

    3.times do |l|
      if cells[l*3] == cells[l*3+1] && cells[l*3] == cells[l*3+2] && cells[l*3]
        return true
      end
    end
    return false
  end

  def check_col
    cells = @board.cells
    3.times do |l|
      if cells[l-1] == cells[l+2] && cells[l+2] == cells[l+5] && cells[l-1]
        return true
      end
    end
    return false
  end

  def check_diag
    cells = @board.cells
    if cells[0] == cells[4] && cells[4] == cells[8] && cells[0]
      return true
    elsif
      cells[2] == cells[4] && cells[4] == cells[6] && cells[2]
      return true
    end
    return false
  end

end
