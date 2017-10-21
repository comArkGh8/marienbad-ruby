# To change this license header, choose License Headers in Project Properties.
# To change this template file, choose Tools | Templates
# and open the template in the editor.

require 'row_operations'
require 'marienbad_board'

describe RowOperations do
  
  before :each do
    @given_four_rows_of_sticks={1 => 1, 2=>2, 3=>2, 4=>6}
    @given_three_rows_of_sticks={1 => 1, 2=>0, 3=>2, 4=>6}
    @given_two_rows_of_sticks={1 => 1, 2=>0, 3=>2, 4=>0}
    @given_one_rows_of_sticks={1 => 0, 2=>0, 3=>0, 4=>6}
    
    @marienbad_board_4 = MarienbadBoard.new(@given_four_rows_of_sticks)
    @array_4 = @marienbad_board_4.row_of_sticks.values.select{|v| v!=0}
    @marienbad_board_3 = MarienbadBoard.new(@given_three_rows_of_sticks)
    @array_3 = @marienbad_board_3.row_of_sticks.values.select{|v| v!=0}
    @marienbad_board_2 = MarienbadBoard.new(@given_two_rows_of_sticks)
    @array_2 = @marienbad_board_2.row_of_sticks.values.select{|v| v!=0}
    @marienbad_board_1 = MarienbadBoard.new(@given_one_rows_of_sticks)
    @array_1 = @marienbad_board_1.row_of_sticks.values.select{|v| v!=0}
    
  end


  it "tests number of non-zero rows" do
    expect(RowOperations.number_of_non_zero_rows(@array_4)).to eq 4
    expect(RowOperations.number_of_non_zero_rows(@array_3)).to eq 3
    expect(RowOperations.number_of_non_zero_rows(@array_2)).to eq 2
    expect(RowOperations.number_of_non_zero_rows(@array_1)).to eq 1

    
  end
  
  
  it "tests getting order" do

    expect(@marienbad_board_4.get_order_at("row",3)).to eq 3
    expect(@marienbad_board_4.get_order_at("sticks",3)).to eq 2
    
    expect(@marienbad_board_2.get_order_at("row",2)).to eq 3
    expect(@marienbad_board_2.get_order_at("sticks",2)).to eq 2
    
    expect(@marienbad_board_1.get_order_at("row",1)).to eq 4
    expect(@marienbad_board_1.get_order_at("sticks",1)).to eq 6
 
  end
  
  
  it "checks for repeated rows" do
        
    expect(RowOperations.array_has_repeated_row?(@array_4)).to eq true
    
    expect(RowOperations.array_has_repeated_row?(@array_1)).to eq false

  end
  

  
  
  
end

