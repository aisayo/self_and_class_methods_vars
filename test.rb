class Water

    @@all = []

    attr_accessor :ounces

    def initialize(ounces)
        @ounces = ounces
        @@all << self
    end 

    def confirmation
        puts "You just logged #{self.ounces} oz of water"
    end 

    def self.all
        @@all 
    end 

    def self.total_ozs
        total = self.all.map {|x| x.ounces}.sum
        puts "You have drank #{total} ozs of water today!"
    end 

    def self.total_logs
        puts "#{self.all.count} logs"
    end 



end 

w = Water.new(8)
w.confirmation
z = Water.new(8)
z.confirmation
Water.total_ozs
Water.total_logs