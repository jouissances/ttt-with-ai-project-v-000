module Players
  class Computer < Player

    def move(board)
      if !board.taken?(5)
        move = "5"
      elsif board.taken?(5)
        move = [1, 3, 7, 9].detect { |i|
          !board.taken?(i)
        }.to_s
      elsif !board.taken?(1) && !board.taken?(9)
        move = "9"
      elsif board.taken?(3) && !board.taken?(7)
        move = "7"
      elsif board.taken?(7) && !board.taken?(3)
        move = "3"
      elsif board.taken?(9) && !board.taken?(1)
        move = "1"
      elsif board.turn_count == 5
        move = [1, 3, 7, 9].detect { |i|
          !board.taken?(i)
        }.to_s
      else
        nil
      end
    end

  end
end
