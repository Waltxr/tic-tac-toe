class Board
  attr_accessor :grid, :size

  def initialize(size)
    @size = size
    self.reset!
  end

  def reset!
    self.grid = []
    @size.times do
      self.grid << Array.new(@size, nil)
    end
  end

  def display
    self.grid.each do |row|
      puts row.join(" | ")
    end
  end

  def full?
    self.grid.flatten.all?
  end

  def turn_count
    self.grid.flatten.count("X") + self.grid.flatten.count("O")
  end

  def taken?(position)
    self.grid[position.first][position.last] == "X" || self.grid[position.first][position.last] == "O"
  end

  def valid_move?(position)
    !taken?(position) && position.first >= 0 && position.last >= 0 && position.first <= @size && position.last <= @size
  end

  def update(position, player)
    self.grid[position.first][position.last] = player.token
  end

end
