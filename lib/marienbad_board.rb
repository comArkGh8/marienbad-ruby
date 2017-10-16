# To change this license header, choose License Headers in Project Properties.
# To change this template file, choose Tools | Templates
# and open the template in the editor.

class MarienbadBoard
  #include Operation modules
  
  attr_reader :row_of_sticks
  
  #make a board with input as a
  #given hash map or the startup board
  def initialize(initial_board=nil)
    initial_board.nil? ? @row_of_sticks={1 => 1, 2=>3, 3=>5, 4=>7}: 
      @row_of_sticks=initial_board
  end
  
  
  def change(row,sticks)
    sticks_map = @row_of_sticks
    orig_sticks = sticks_map[row] 
    # now create new list of rows with updated sticks
    sticks_map[row] = orig_sticks-sticks
    return initialize(sticks_map)
    
  end
  


  
end
