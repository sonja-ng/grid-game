require_relative 'game'


puts "Enter a size for the grid (must be a number between 2 and 15):"
rows_num = gets.chomp.to_i
raise "invalid position" if rows_num < 2 || rows_num > 15
puts "Enter a marker for your robot. It should be a letter. Case doesn't matter."
mark = gets.chomp
alphabet = ('a'..'z').to_a + ('A'..'Z').to_a
raise "not a letter!" if !alphabet.include?(mark)
raise "pls give us only 1 letter!" if mark.length != 1
mark.upcase!
puts "Enter a starting position, X Y, for your robot. X for row and Y for column"
pos = gets.chomp
raise "invalid position!" if pos.length != 3
raise "number only!" if pos.split("").any? { |coord| alphabet.include?(coord) }
pos_x = pos[0]
pos_y = pos[-1]


new_game = Game.new(rows_num, [pos_x.to_i, pos_y.to_i], mark)
new_game.play