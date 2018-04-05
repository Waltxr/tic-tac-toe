class Game
  attr_accessor :board, :player_1, :player_2, :user_input

  def initialize(player_1, player_2, board, size)
    @player_1 = player_1
    @player_2 = player_2
    @board = board
    @board.display
    @size = size
  end

  def current_player
    @board.turn_count.odd? ? @player_2 : @player_1
  end

  def won?
    row_win? || col_win? || backslash_win? || forwardslash_win?
  end

  def draw?
    @board.full? && !won?
  end

  def over?
    won? || draw?
  end

  def winner
    if current_player == @player_2
      return @player_1.token
    else
      return @player_2.token
    end
  end

  def turn
    puts "Please enter the row number of where you'd like to place your #{current_player.token}:"
    puts "Then, please enter the column number of where you'd like to place your #{current_player.token}:"

    @user_input = current_player.move(@board)
    if @board.valid_move?(@user_input)
      @board.update(@user_input, current_player)
    else puts "I'm sorry, that spot is not valid"
      turn
    end

    @board.display
  end

  def play
    turn until over?
    if won?
      puts "#{winner} has won"
    elsif draw?
      puts "It's a draw!"
    end
  end

  private

  def row_win?
    rows = @board.grid
    @size.times do |l|
      if rows[l].uniq.length == 1 && rows[l].first
        return true
      end
    end
    return false
  end

  def col_win?
    cols = @board.grid.transpose
    @size.times do |l|
      if cols[l].uniq.length == 1 && cols[l].first
        return true
      end
    end
    return false
  end

  def backslash_win?
    combo = []
    @size.times do |l|
      combo << board.grid[l][l]
    end
    combo.uniq.length == 1 && combo.all?
  end

  def forwardslash_win?
    combo = []
    @size.times do |l|
      if l == 0
        combo << board.grid[l][-1]
      else
        combo << board.grid[l][-l-1]
      end
    end    
    combo.uniq.length == 1 && combo.all?
  end

end
