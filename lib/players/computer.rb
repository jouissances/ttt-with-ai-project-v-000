module Players
  class Computer < Player

    def move(board)
      if !board.taken?(5)
        move = "5"
      else
        [1, 3, 7, 9].detect { |i|
          !board.taken(i)
        }.to_s
      end

    end

  end
end
