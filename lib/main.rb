# To change this license header, choose License Headers in Project Properties.
# To change this template file, choose Tools | Templates
# and open the template in the editor.

require_relative "marienbad_board"
puts "Hello World"

board = MarienbadBoard.new

sticks_hash = {1 => 0, 2=>0, 3=>3, 4=>7}
new_board = MarienbadBoard.new(sticks_hash)
init_board = MarienbadBoard.new


init_board.change(2, 1)
puts init_board.row_of_sticks[2]
puts init_board.row_of_sticks[3]

