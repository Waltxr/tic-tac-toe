module Players
  class Human < Player

    def move
      row = gets.chomp
      column = gets.chomp
      return [row.to_i-1, column.to_i-1]
    end

    def human?
      true
    end

  end
end
