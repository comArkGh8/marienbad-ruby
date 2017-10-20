
# this module looks at all the possible losing hands 
# in the game of Marienbad.  grouped according to 
# number of non-zero rows, they are:
# row = 1: 1 
# 
# case row = 2:
#   if two are same (and not 1), then loses, else wins
# 
# case row = 3:
#   if smallest = 1: next are sum == 3 or 6
#   1,1,1
#   3,2,1
#   next two are separate special cases
#   5,4,1
#   6,4,2 
#   next are sum = 14
#   7,5,2
#   7,4,3
#   6,5,3
#   
# case row = 4: 
#   n,n,1,1 (sum = 2*low + 2*high)
#   next are covered by sum == 14 or 16
#   7,4,2,1
#   6,5,2,1
#   6,4,3,1
#   7,5,3,1


module LosingSituations
  
  # returns true if it is a losing situation
  def is_loser?
    
    return true if sum_of_sticks == 1
   
    # else divide according to number of non-zero rows
    # next belongs to 3 or four rows
    return true if (sum_of_sticks == 14) || (sum_of_sticks == 16)
    
    sorted_stick_array = sort_by_increasing_sticks.values
    case number_of_non_zero_rows
        
      when 2  
        return true if sorted_stick_array[0]>1 && has_repeated_row?
      
      when 3
        return true if (sorted_stick_array == [1,4,5]) || 
          (sorted_stick_array == [2,4,6])
        
        return true if sorted_stick_array[0]==1 && ((sum_of_sticks == 3) ||
          (sum_of_sticks == 6))
        
      when 4
        return true if sum_of_sticks == (2*sorted_stick_array[0] + 
          2*sorted_stick_array[2])
  
    end
    
    # else must be false
    return false
  end
  
end
