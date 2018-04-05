module Players
  class Human < Player

    def move(board)
      row = gets.chomp
      column = gets.chomp
      return [row.to_i-1, column.to_i-1]
    end

  end
end
