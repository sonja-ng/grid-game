require 'rspec'
require 'game'

describe "Game" do 
    describe "#initialize" do 
        it "should have a @board set to a new instance of a board class, and a @robot set to new instance of a robot class" do 
        end
    end

    describe "#start" do 
        it "should call @board.print_board" do
        end

        it "should get user input check if it is valid" do 
        end

        it "should not end until user input is STOP" do 
        end

        it "should call #change_input_to_coordinates" do 
        end

        it "should update robot position" do 
        end

        it "should update robot's new position on board" do 
        end
    end

    describe "#change_input_to_coordinates" do 
        it "should turn user input (string) into a coordinate position (array)" do 
        end

        it "should validate string input to be NSWE" do 
        end
    end
end

["_","R","_"]
