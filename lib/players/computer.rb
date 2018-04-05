module Players
  class Computer < Player

    def move(board)
      options = (1..board.size).to_a
      return [options.sample.to_i-1, options.sample.to_i-1]
    end

  end
end
