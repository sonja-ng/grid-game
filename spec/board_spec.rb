require 'rspec'
require 'board'

describe "Board" do 
    subject(:Board) { Mock.new }
    describe "#initialize" do 
        it "should have a @grid that is a 10 x 10 2D array" do 
        end
    end

    describe "#place_robot" do 
        it "should accept position (array) as argument" do 
        end
    end

    describe "#print_board" do 
        it "should print the @grid" do 
        end
    end

    describe "#pos_valid?" do 
        it "should accept a position (array) as argument" do 
        end

        context "if it is invalid" do 
            it "should return false" do 
            end
        end

        context "if it is valid" do 
            it "should return true" do 
            end
        end
     end
end