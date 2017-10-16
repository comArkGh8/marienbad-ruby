# To change this license header, choose License Headers in Project Properties.
# To change this template file, choose Tools | Templates
# and open the template in the editor.

require 'marienbad_board'

describe MarienbadBoard do
  #before(:each) do
  #  @marienbad_board = MarienbadBoard.new
  #end

  it "creates initial board" do
    @marienbad_board = MarienbadBoard.new
    num_sticks_row1=@marienbad_board.row_of_sticks[1]
    expect(num_sticks_row1).to eq(1)
    expect(@marienbad_board.row_of_sticks[2]).to eq 3
  end
  
  it "creates given board" do
      
    @given_row_of_sticks={1 => 1, 2=>2, 3=>0, 4=>6}
    
    @marienbad_board = MarienbadBoard.new(@given_row_of_sticks)
    
    expect(@marienbad_board.row_of_sticks[1]).to eq 1
    expect(@marienbad_board.row_of_sticks[2]).to eq 2
    expect(@marienbad_board.row_of_sticks[3]).to eq 0
    expect(@marienbad_board.row_of_sticks[4]).to eq 6
    
  end
  
  it "changes 33 to 13" do
        
    @given_row_of_sticks={1 => 0, 2=>0, 3=>3, 4=>3}
    @marienbad_board = MarienbadBoard.new(@given_row_of_sticks)
    @marienbad_board.change(3,2)

    expect(@marienbad_board.row_of_sticks[3]).to eq 1
  
  end
  
  
end

