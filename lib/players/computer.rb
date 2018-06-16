module Players
  class Computer < Player

    def move(board)
      board.cells.each_index.select { |i| 
        cells[i] == " "
      }.sample
    end

  end
end
