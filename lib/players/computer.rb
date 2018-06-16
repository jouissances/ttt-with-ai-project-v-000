module Players
  class Computer < Player

    def move(board)
      if !board.taken?(5) 
        move = "5" 
      elsif board.taken?(5) && !board.taken?(1)
        move = "1"
      elsif board.taken?(5) && board.taken?(1) && !board.taken?(3)
        move = "3"
      elsif board.taken?(5) && board.taken?(1) && board.taken?(3) && !board.taken?(7)
        move = "7"
      else
        move = "9"
      end
    end

  end
end
