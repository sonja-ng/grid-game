require_relative 'board'
require_relative 'robot'
require 'byebug'

class Game 
    def initialize(length, pos, mark)
        @board = Board.new(length)
        @robot = Robot.new(@board, pos, mark)
    end

    def play
      loop do
       @board.place_robot(@robot.end_pos, @robot.mark)
       @board.print
       puts
       puts "Enter a direction (N, S, E, W) for the robot to move one spot to. To end game, type in STOP"
       ans = gets.chomp.upcase!
       break if ans == "STOP"
       @robot.move(ans)
      end
      puts "Good game. Goodbye!"
    end
end


