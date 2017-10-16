# To change this license header, choose License Headers in Project Properties.
# To change this template file, choose Tools | Templates
# and open the template in the editor.

require_relative "marienbad_board"
puts "Hello World"

board = MarienbadBoard.new

sticks_hash = {1 => 3, 2=>1, 3=>0, 4=>7}
new_board = MarienbadBoard.new(sticks_hash)
init_board = MarienbadBoard.new


init_board.change(2, 1)

sorted = new_board.sort_by_increasing_sticks

puts sorted
puts new_board.get_order_at("row", 1)
puts new_board.get_order_at("sticks", 3)
