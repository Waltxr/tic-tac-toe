class Board
  attr_accessor :cells, :n

  def reset!
    self.cells = Array.new(@n*@n, nil)
  end

  def initialize(n)
    @n = n
    self.cells = Array.new(@n*@n, nil)
  end

  def display
    rows = self.cells.each_slice(@n)

    rows.each do |row|
      puts row.join(" | ")
      puts "---" * @n
    end
  end

  def full?
    self.cells.all? {|cell| cell == "X" || cell == "O"}
  end

  def turn_count
    self.cells.count("X") + self.cells.count("O")
  end

  def taken?(position)
    self.cells[position.to_i-1] == "X" || self.cells[position.to_i-1] == "O"
  end

  def valid_move?(position)
    !taken?(position) && position.to_i >0 && position.to_i <=@n*@n
  end

  def update(position, player)
      self.cells[position.to_i-1] = player.token
  end

end
