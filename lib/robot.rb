require_relative 'board'

class Robot 
  attr_accessor :board, :start_pos, :end_pos
  attr_reader :mark 

  MOVES = {
      "N" => [-1,0],
      "S" => [1,0],
      "W" => [0,-1],
      "E" => [0,1]
  }
  def initialize(board, end_pos, mark)
    @board = board
    @start_pos = [nil, nil]
    @end_pos = end_pos
    @mark = mark
  end

  def calculate_new_pos(direction)
    @start_pos = @end_pos.clone
    new_x = MOVES[direction].first + @start_pos.first
    new_y = MOVES[direction].last + @start_pos.last
    @end_pos = [new_x, new_y]
  end

  def new_pos_valid?
    x_valid = @end_pos.first >= 0 && @end_pos.first < @board.grid.length
    y_valid = @end_pos.last >= 0 && @end_pos.last < @board.grid[0].length
    x_valid && y_valid
  end

  def move(direction)
    self.calculate_new_pos(direction)
    if self.new_pos_valid?
      @board.remove_robot(@start_pos)
      @board.place_robot(@end_pos, @mark)
      return true
    else
        raise "You fell off the edge! Game Over."
        return false
    end
  end

end