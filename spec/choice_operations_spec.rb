# To change this license header, choose License Headers in Project Properties.
# To change this template file, choose Tools | Templates
# and open the template in the editor.

require 'choice_operations'
require 'row_operations'
require 'marienbad_board'

describe ChoiceOperations do

  it "return 0001" do
    @given_one_rows_of_sticks={1 => 0, 2=>0, 3=>0, 4=>6}
    @marienbad_board_1 = MarienbadBoard.new(@given_one_rows_of_sticks)
    
    expect(@marienbad_board_1.best_choice).to eq [4,5]
  end
  
  it "should take one from the losing sit 0022" do
    @given_sticks={1 => 0, 2=>2, 3=>0, 4=>2}
    @board = MarienbadBoard.new(@given_sticks)
    
    expect(@board.best_choice).to eq [4,1]
  end
  
  it "should take one from the losing sit 0044" do
    @given_sticks={1 => 0, 2=>2, 3=>0, 4=>2}
    @board = MarienbadBoard.new(@given_sticks)
    
    expect(@board.best_choice).to eq [4,1]
  end
  
  it "should remove a row if returns 1" do
    @given_sticks={1 => 0, 2=>1, 3=>5, 4=>0}
    @board = MarienbadBoard.new(@given_sticks)
    
    expect(@board.best_choice).to eq [3,5]
  end
  
  it "should return two of same if two rows" do
    @given_sticks={1 => 0, 2=>3, 3=>0, 4=>5}
    @board = MarienbadBoard.new(@given_sticks)
    
    expect(@board.best_choice).to eq [4,2]
  end
  
  it "should take one from losing three rows" do
    @given_sticks={1 => 1, 2=>1, 3=>1, 4=>0}
    @board = MarienbadBoard.new(@given_sticks)
    
    expect(@board.best_choice).to eq [3,1]
  end
  
  it "should take one from losing 1320" do
    @given_sticks={1 => 1, 2=>3, 3=>2, 4=>0}
    @board = MarienbadBoard.new(@given_sticks)
    
    expect(@board.best_choice).to eq [2,1]
  end
  
  
  it "should give 111 from 1n1" do
    @given_sticks={1 => 1, 2=>3, 3=>0, 4=>1}
    @board = MarienbadBoard.new(@given_sticks)
    
    expect(@board.best_choice).to eq [2,2]
  end
  
  it "should give 321 from 1n2" do
    @given_sticks={1 => 1, 2=>4, 3=>0, 4=>2}
    @board = MarienbadBoard.new(@given_sticks)
    
    expect(@board.best_choice).to eq [2,1]
  end
  
  it "should take one from losing 5410" do
    @given_sticks={1 => 5, 2=>4, 3=>1, 4=>0}
    @board = MarienbadBoard.new(@given_sticks)
    
    expect(@board.best_choice).to eq [1,1]
  end
  
  it "should give 541 from 741" do
    @given_sticks={1 => 1, 2=>0, 3=>4, 4=>7}
    @board = MarienbadBoard.new(@given_sticks)
    
    expect(@board.best_choice).to eq [4,2]
  end
  
  it "should give 541 from 751" do
    @given_sticks={1 => 1, 2=>0, 3=>5, 4=>7}
    @board = MarienbadBoard.new(@given_sticks)
    
    expect(@board.best_choice).to eq [4,3]
  end
  
  it "should give 321 from 632" do
    @given_sticks={1 => 0, 2=>2, 3=>3, 4=>6}
    @board = MarienbadBoard.new(@given_sticks)
    
    expect(@board.best_choice).to eq [4,5]
  end
  
  it "should take one from losing 6420" do
    @given_sticks={1 => 6, 2=>4, 3=>2, 4=>0}
    @board = MarienbadBoard.new(@given_sticks)
    
    expect(@board.best_choice).to eq [1,1]
  end
  
  it "should give 541 from 542" do
    @given_sticks={1 => 0, 2=>2, 3=>5, 4=>4}
    @board = MarienbadBoard.new(@given_sticks)
    
    expect(@board.best_choice).to eq [2,1]
  end
  
  it "should give 642 from 742" do
    @given_sticks={1 => 0, 2=>2, 3=>4, 4=>7}
    @board = MarienbadBoard.new(@given_sticks)
    
    expect(@board.best_choice).to eq [4,1]
  end
  
  it "should give 642 from 652" do
    @given_sticks={1 => 0, 2=>2, 3=>5, 4=>6}
    @board = MarienbadBoard.new(@given_sticks)
    
    expect(@board.best_choice).to eq [3,1]
  end
  
  it "should give 541 from 543" do
    @given_sticks={1 => 0, 2=>3, 3=>4, 4=>5}
    @board = MarienbadBoard.new(@given_sticks)
    
    expect(@board.best_choice).to eq [2,2]
  end
  
  it "should give 330 from 133" do
    @given_sticks={1 => 1, 2=>0, 3=>3, 4=>3}
    @board = MarienbadBoard.new(@given_sticks)
    
    expect(@board.best_choice).to eq [1,1]
  end
  
  it "should give 642 from 643" do
    @given_sticks={1 => 0, 2=>3, 3=>4, 4=>6}
    @board = MarienbadBoard.new(@given_sticks)
    
    expect(@board.best_choice).to eq [2,1]
  end
  
  it "should give 11kk from 11nk" do
    @given_sticks={1 => 1, 2=>3, 3=>1, 4=>5}
    @board = MarienbadBoard.new(@given_sticks)
    
    expect(@board.best_choice).to eq [4,2]
  end
  
  it "should give 2211 from 1225" do
    @given_sticks={1 => 1, 2=>2, 3=>5, 4=>2}
    @board = MarienbadBoard.new(@given_sticks)
    
    expect(@board.best_choice).to eq [3,4]
  end
  
  it "should give stall from 1133" do
    @given_sticks={1 => 1, 2=>3, 3=>3, 4=>1}
    @board = MarienbadBoard.new(@given_sticks)
    
    expect(@board.best_choice).to eq [3,1]
  end
  
  it "should give 321 from 321n" do
    @given_sticks={1 => 1, 2=>3, 3=>2, 4=>7}
    @board = MarienbadBoard.new(@given_sticks)
    
    expect(@board.best_choice).to eq [4,7]
  end
  
  it "should give 541 from 541n" do
    @given_sticks={1 => 1, 2=>3, 3=>4, 4=>5}
    @board = MarienbadBoard.new(@given_sticks)
    
    expect(@board.best_choice).to eq [2,3]
  end
  
  it "should give 642 from 642n" do
    @given_sticks={1 => 1, 2=>2, 3=>4, 4=>6}
    @board = MarienbadBoard.new(@given_sticks)
    
    expect(@board.best_choice).to eq [1,1]
  end
  
  it "should stall 6431" do
    @given_sticks={1 => 1, 2=>6, 3=>4, 4=>3}
    @board = MarienbadBoard.new(@given_sticks)
    
    expect(@board.best_choice).to eq [2,1]
  end
  
  it "should stall 6521" do
    @given_sticks={1 => 1, 2=>6, 3=>5, 4=>2}
    @board = MarienbadBoard.new(@given_sticks)
    
    expect(@board.best_choice).to eq [2,1]
  end
  
  it "should give 2332 from 2334" do
    @given_sticks={1 => 2, 2=>3, 3=>3, 4=>4}
    @board = MarienbadBoard.new(@given_sticks)
    
    expect(@board.best_choice).to eq [4,2]
  end
  
  
  
end

