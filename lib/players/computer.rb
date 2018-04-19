module Players
  class Computer < Player

    def move(size)
      options = (1..size).to_a
      return [options.sample.to_i-1, options.sample.to_i-1]
    end

    def human?
      false
    end

  end
end
