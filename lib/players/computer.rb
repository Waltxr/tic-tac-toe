module Players
  class Computer < Player

    def move(board)      
      move = case
      when !board.taken?(5)
        move = "5"
      when board.turn_count == 1 && board.taken?(5)
        choices = ["1", "3", "7", "9"]
        move = choices.sample
      when board.turn_count == 2 && board.taken?(5)
        choices = ["2", "4", "6", "9"]
        move = choices.sample
      when board.turn_count > 2
        choices = (1..board.n).to_a
        move = choices.sample.to_s
      end
      move
    end
  end
end
