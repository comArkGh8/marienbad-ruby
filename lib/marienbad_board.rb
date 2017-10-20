# To change this license header, choose License Headers in Project Properties.
# To change this template file, choose Tools | Templates
# and open the template in the editor.

class MarienbadBoard
  #include Operation modules
  require_relative "row_operations"
  include RowOperations
  #include LosingSituations
  
  attr_reader :row_of_sticks
  attr_accessor :two_same
  
  
  #make a board with input as a
  #given hash map or the startup board
  def initialize(initial_board=nil)
    initial_board.nil? ? @row_of_sticks={1 => 1, 2=>3, 3=>5, 4=>7}: 
      @row_of_sticks=initial_board
      @two_same = Array.new
  end
  
  
  def change(row,sticks)
    sticks_map = @row_of_sticks
    orig_sticks = sticks_map[row] 
    # now create new list of rows with updated sticks
    sticks_map[row] = orig_sticks-sticks
    return initialize(sticks_map)
    
  end
  


  
end

