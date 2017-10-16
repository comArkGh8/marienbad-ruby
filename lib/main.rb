# To change this license header, choose License Headers in Project Properties.
# To change this template file, choose Tools | Templates
# and open the template in the editor.

require_relative "marienbad_board"

board = MarienbadBoard.new

sticks_hash = {1 => 3, 2=>2, 3=>0, 4=>7}
new_board = MarienbadBoard.new(sticks_hash)
init_board = MarienbadBoard.new



puts new_board.has_repeated_row?
p new_board.two_same

 
