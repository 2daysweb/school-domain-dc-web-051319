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
      @roster.sort.to_h
      binding.pry
  end 
    
    #sort value arrays in place
    def sort
      binding.pry
      sorted_key_hash = sort_by_key
      sorted_key_hash.each do |k,v|
        sorted_key_hash[k] = v.sort!
      end
end
end
          
      
  
    
    