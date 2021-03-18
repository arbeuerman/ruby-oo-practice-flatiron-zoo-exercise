class Animal

    #instance variables
    attr_reader :species, :nickname, :zoo
    attr_accessor :weight 

    #class variables
    @@all_animals = []

    def initialize(species, weight, nickname, zoo)
        @species = species
        @weight = weight
        @nickname = nickname
        @@all_animals << self
        @zoo = zoo 
    end
    
    def self.all 
        @@all_animals
    end 

    def self.find_by_species(species)
        @@all_animals.select do |animal|
            animal.species == species 
        end  
    end

end
