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
    @marienbad_board_3 = MarienbadBoard.new(@given_three_rows_of_sticks)
    @marienbad_board_2 = MarienbadBoard.new(@given_two_rows_of_sticks)
    @marienbad_board_1 = MarienbadBoard.new(@given_one_rows_of_sticks)
  end


  it "tests number of non-zero rows" do
    
    expect(@marienbad_board_4.number_of_non_zero_rows).to eq 4
    expect(@marienbad_board_3.number_of_non_zero_rows).to eq 3
    expect(@marienbad_board_2.number_of_non_zero_rows).to eq 2
    expect(@marienbad_board_1.number_of_non_zero_rows).to eq 1

    
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
        
    expect(@marienbad_board_4.has_repeated_row?).to eq true
    expect(@marienbad_board_4.two_same[0]).to eq 2
    expect(@marienbad_board_4.two_same[1]).to eq 3
    
    expect(@marienbad_board_1.has_repeated_row?).to eq false

  end
  
  it "checks sum of sticks" do
        
    expect(@marienbad_board_4.sum_of_sticks).to eq 11
    expect(@marienbad_board_3.sum_of_sticks).to eq 9
    expect(@marienbad_board_2.sum_of_sticks).to eq 3
    
    expect(@marienbad_board_1.sum_of_sticks).to eq 6

  end
  
  
  
end

