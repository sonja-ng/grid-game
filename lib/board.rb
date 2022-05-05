require "byebug"

class Board
    attr_accessor :grid
  def initialize(length)
    @grid = Array.new(length) { Array.new(length, :_)}
  end

  def [](pos)
    @grid[pos.first][pos.last]
  end
  
  def []=(pos, value)
    @grid[pos.first][pos.last] = value
  end

  def place_robot(end_pos, mark)
    self[end_pos] = mark
  end

  def remove_robot(old_pos)
    self[old_pos] = :_
  end

  def print
    @grid.each do |row|
        p row
    end
  end


end