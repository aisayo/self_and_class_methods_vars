# We are going to create a program that tracks the amount of water we drink. 
# Every time our user drinks water, it is a new instance.


# Create a Water class
# Each record should be initialized with an ounces attribute
# The class needs to keep track of all objects created
# Create a method, confirmation, that let's the user know how much water they just logged
# Create a method, total_logs, that returns how many logs a user has input
# BONUS: create a method, total_ozs, that returns and prints the total ounces of water => "You have drank ___ ozs of water today!"

class Water 

    @@all = []

     attr_accessor :ounces

    def initialize(ounces)
        @ounces = ounces 
        # @@all << self 
        self.class.all << self  #Water.all
    end 

    def self.all 
        @@all 
    end 

    def confirmation
        # puts "You've logged #{@ounces} oz's"
        puts "You've logged #{self.ounces} oz's"
    end 

    def self.total_logs
        #@@all.count 
        self.all.count
    end 

    def self.total_ozs
        total = self.all.map {|water_log| water_log.ounces}.sum
        "You have drank #{total} ozs of water today!"
    end 
    

end 

a = Water.new(8)
a.confirmation 
b = Water.new(10)
b.confirmation
puts Water.total_logs
puts Water.total_ozs


