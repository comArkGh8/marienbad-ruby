# To change this license header, choose License Headers in Project Properties.
# To change this template file, choose Tools | Templates
# and open the template in the editor.

module RowOperations
  
  
  def number_of_non_zero_rows
    num_zeros = 0
    row_of_sticks.each {|r,s|
      num_zeros +=1 if s==0
    }
    return 4-num_zeros
  end
  
  
  # returns copy of row map in ascending order
  # deletes the zero rows
  def sort_by_increasing_sticks
    sorted_map = row_of_sticks.sort_by {|k,v| v}.to_h
    sorted_minus_zeros = sorted_map.select{|k,v| v!=0}
  end
  
  
  # returns (row or sticks) in kth order (from 1-number of non-zero)
  def get_order_at(row_or_sticks,k)
    sorted_map=sort_by_increasing_sticks
    case row_or_sticks
      when "row" then return sorted_map.keys[k-1]
      when "sticks" then return sorted_map.values[k-1]
    end
  end
    

  # next take care of situation of equal rows...
 
    
end
