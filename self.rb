puts self.class #main
require 'pry'

class Person

    name = "aysan"

   

    # puts self # class scope 

    # def initialize(name)
        
    #     puts self
    #     # self.name = name 
    # end 

    def self.all
        puts "my name is, #{name}" 
    end 

    def print_name #instance
        puts self.name
    end 

    def capitalize_name
        print_name = "Kellen"
        puts self.print_name # self.print_name 
    end 

    binding.pry
end 

Person.all 
