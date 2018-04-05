class Board
  attr_accessor :cells, :n

  def initialize(n)
    @n = n
    self.cells = []
    @n.times do
      self.cells << Array.new(@n, nil)
    end
  end

  def reset!
    self.cells = self.cells = []
    @n.times do
      self.cells << Array.new(@n, nil)
    end
  end

  def display
    self.cells.each do |row|
      puts row.join(" | ")
    end
  end

  def full?
    self.cells.flatten.all? {|cell| cell == "X" || cell == "O"}
  end

  def turn_count
    self.cells.flatten.count("X") + self.cells.flatten.count("O")
  end

  def taken?(position)
    x = position.split(",").first.to_i-1
    y = position.split(",").last.to_i-1
    self.cells[x][y] == "X" || self.cells[x][y] == "O"
  end

  def valid_move?(position)
    x = position.split(",").first.to_i-1
    y = position.split(",").last.to_i-1
    !taken?(position) && x >= 0 && y >= 0 && x <= @n && y <=@n
  end

  def update(position, player)
    x = position.split(",").first.to_i-1
    y = position.split(",").last.to_i-1
    self.cells[x][y] = player.token
  end

end
