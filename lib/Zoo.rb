class Zoo

    attr_reader :location, :name    
    
    # class variables
    @@all_zoos = []

    def initialize(name, location)
        @name = name
        @location = location
        @@all_zoos << self 
    end
    
    def self.all 
        @@all_zoos
    end   

end
