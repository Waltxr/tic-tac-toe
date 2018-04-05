module Players
  class Human < Player

    def move(board)
      row = gets.chomp
      column = gets.chomp

      "#{row}, #{column}"
    end

  end
end
