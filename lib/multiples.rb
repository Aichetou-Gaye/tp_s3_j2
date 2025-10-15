# frozen_string_literal: true

def is_multiple_of_3_or_5?(number) # rubocop:disable Naming/PredicatePrefix
  return true if (number % 3).zero? || (number % 5).zero?

  false
end

 def sum_of_3_or_5_multiples(final_number)

     final_sum = 0 
      
      
     (0...final_number).each do |number|


     
     if is_multiple_of_3_or_5?(number) 

      final_sum += number
     

        
     end

    end
     return final_sum 
    
   end

