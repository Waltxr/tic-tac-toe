module Players
  class Computer < Player

    def move(board)

      choices = ["1", "2", "3", "4", "5", "6", "7", "8", "9"]
      choices.sample
    end

  end
end
