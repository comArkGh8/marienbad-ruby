# To change this license header, choose License Headers in Project Properties.
# To change this template file, choose Tools | Templates
# and open the template in the editor.

require 'row_operations'
require 'marienbad_board'
require 'losing_situations'

describe LosingSituations do
  
  
  ##########################
  ##### one left ###########
  ##########################
  
  it "should lose with 0001" do
    board={1 => 0, 2=>1, 3=>0, 4=>0}
    @marienbad_board = MarienbadBoard.new(board)
    expect(@marienbad_board.is_loser?).to eq true
    
    board={1 => 0, 2=>0, 3=>3, 4=>0}
    @marienbad_board = MarienbadBoard.new(board)
    expect(@marienbad_board.is_loser?).to eq false
    
  end

  ###########################
  #### two rows #############
  ###########################

  it "should win with 0011" do
    board={1 => 0, 2=>1, 3=>0, 4=>1}
    @marienbad_board = MarienbadBoard.new(board)
    
    expect(@marienbad_board.is_loser?).to eq false
  end
  
  it "should lose with two same" do
    board={1 => 0, 2=>2, 3=>2, 4=>0}
    @marienbad_board = MarienbadBoard.new(board)
    
    expect(@marienbad_board.is_loser?).to eq true
  end
  
  it "should win with two different" do
    board={1 => 0, 2=>3, 3=>0, 4=>2}
    @marienbad_board = MarienbadBoard.new(board)
    
    expect(@marienbad_board.is_loser?).to eq false
  end
  
  
  
  ###########################
  #### three rows #############
  ###########################
  
  it "should lose with three ones" do
    board={1 => 1, 2=>1, 3=>1, 4=>0}
    @marienbad_board = MarienbadBoard.new(board)
    
    expect(@marienbad_board.is_loser?).to eq true
  end
  
  
  it "should win with one big two ones" do
    board={1 => 1, 2=>0, 3=>1, 4=>7}
    @marienbad_board = MarienbadBoard.new(board)
    
    expect(@marienbad_board.is_loser?).to eq false
  end
  
  it "should lose with 321" do
    board={1 => 1, 2=>3, 3=>2, 4=>0}
    @marienbad_board = MarienbadBoard.new(board)
    
    expect(@marienbad_board.is_loser?).to eq true
  end
  
  it "should win with 325" do
    board={1 => 0, 2=>3, 3=>2, 4=>5}
    @marienbad_board = MarienbadBoard.new(board)
    
    expect(@marienbad_board.is_loser?).to eq false
  end
  
  it "should lose with 145" do
    board={1 => 1, 2=>0, 3=>5, 4=>4}
    @marienbad_board = MarienbadBoard.new(board)
    
    expect(@marienbad_board.is_loser?).to eq true
  end
  
  it "should win with 442" do
    board={1 => 0, 2=>2, 3=>4, 4=>4}
    @marienbad_board = MarienbadBoard.new(board)
    
    expect(@marienbad_board.is_loser?).to eq false
  end
  
  it "should win with 245" do
    board={1 => 0, 2=>2, 3=>4, 4=>5}
    @marienbad_board = MarienbadBoard.new(board)
    
    expect(@marienbad_board.is_loser?).to eq false
  end
  
  it "should win with 125" do
    board={1 => 1, 2=>2, 3=>5, 4=>0}
    @marienbad_board = MarienbadBoard.new(board)
    
    expect(@marienbad_board.is_loser?).to eq false
  end
  
  it "should lose with 246" do
    board={1 => 0, 2=>2, 3=>4, 4=>6}
    @marienbad_board = MarienbadBoard.new(board)
    
    expect(@marienbad_board.is_loser?).to eq true
  end
  
  
  it "should lose with 257" do
    board={1 => 0, 2=>2, 3=>5, 4=>7}
    @marienbad_board = MarienbadBoard.new(board)
    
    expect(@marienbad_board.is_loser?).to eq true
  end
  
  it "should lose with 347" do
    board={1 => 0, 2=>3, 3=>4, 4=>7}
    @marienbad_board = MarienbadBoard.new(board)
    
    expect(@marienbad_board.is_loser?).to eq true
  end
  
  it "should lose with 356" do
    board={1 => 0, 2=>3, 3=>5, 4=>6}
    @marienbad_board = MarienbadBoard.new(board)
    
    expect(@marienbad_board.is_loser?).to eq true
  end
  
  it "should win with 256" do
    board={1 => 0, 2=>2, 3=>5, 4=>6}
    @marienbad_board = MarienbadBoard.new(board)
    
    expect(@marienbad_board.is_loser?).to eq false
  end
  
  it "should win with 157" do
    board={1 => 0, 2=>1, 3=>5, 4=>7}
    @marienbad_board = MarienbadBoard.new(board)
    
    expect(@marienbad_board.is_loser?).to eq false
  end
  
  it "should win with 345" do
    board={1 => 0, 2=>3, 3=>4, 4=>5}
    @marienbad_board = MarienbadBoard.new(board)
    
    expect(@marienbad_board.is_loser?).to eq false
  end
  
  
  ###########################
  #### four rows #############
  ###########################

  
  it "should lose with initial board" do
    @marienbad_board = MarienbadBoard.new  
    expect(@marienbad_board.is_loser?).to eq true
  end
  
  it "should lose with 1133" do
    board={1 => 1, 2=>1, 3=>3, 4=>3}
    @marienbad_board = MarienbadBoard.new(board)
    
    expect(@marienbad_board.is_loser?).to eq true
  end
  
  it "should win with 1233" do
    board={1 => 1, 2=>3, 3=>2, 4=>3}
    @marienbad_board = MarienbadBoard.new(board)
    
    expect(@marienbad_board.is_loser?).to eq false
  end
  
  it "should lose with 1247" do
    board={1 => 1, 2=>7, 3=>4, 4=>2}
    @marienbad_board = MarienbadBoard.new(board)
    
    expect(@marienbad_board.is_loser?).to eq true
  end
  
  it "should win with 1147" do
    board={1 => 1, 2=>1, 3=>4, 4=>7}
    @marienbad_board = MarienbadBoard.new(board)
    
    expect(@marienbad_board.is_loser?).to eq false
  end
  
  it "should lose with 1256" do
    board={1 => 1, 2=>2, 3=>5, 4=>6}
    @marienbad_board = MarienbadBoard.new(board)
    
    expect(@marienbad_board.is_loser?).to eq true
  end
  
  it "should win with 1246" do
    board={1 => 1, 2=>2, 3=>4, 4=>6}
    @marienbad_board = MarienbadBoard.new(board)
    
    expect(@marienbad_board.is_loser?).to eq false
  end
  
  it "should lose with 1346" do
    board={1 => 3, 2=>4, 3=>1, 4=>6}
    @marienbad_board = MarienbadBoard.new(board)
    
    expect(@marienbad_board.is_loser?).to eq true
  end
  
  it "should win with 1347" do
    board={1 => 1, 2=>3, 3=>4, 4=>7}
    @marienbad_board = MarienbadBoard.new(board)
    
    expect(@marienbad_board.is_loser?).to eq false
  end
  
  it "should win with 1356" do
    board={1 => 1, 2=>3, 3=>5, 4=>6}
    @marienbad_board = MarienbadBoard.new(board)
    
    expect(@marienbad_board.is_loser?).to eq false
  end
  
  
  
end

