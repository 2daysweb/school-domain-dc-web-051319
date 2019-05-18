require 'pry'
class School
  
  attr_accessor :roster
    
    def initialize(roster)
      @roster = {}
    end 


    def add_student(name, grade)
      if roster[grade] == nil 
         @roster[grade] = [] 
         @roster[grade].push(name)
      else 
         @roster[grade].push(name)
    end 
  end
  
    def grade(level)
      @roster[level]
    end 
    
    def sort_by_key
      @roster.keys.sort.to_h
  end 
    
    
    def sort
      sorted_key_hash.each do |k,v|
          arr_values.each do |arr| 
          if @roster[k] == arr
          binding.pry
          @roster[k] = arr
        else
          @roster[k] = @roster[k]
          binding.pry
        end
      end
    end
  end
end
          
      
  
    
    