class Zoo

    attr_reader :location, :name    
    
    # class variables
    @@all_zoos = []

    def initialize(name, location)
        @name = name
        @location = location
        @@all_zoos << self 
    end
    
    def animals
        Animal.all.select do |animal|
            animal.zoo == self
        end

    end

    def animal_species
        animals.map do |animal|
            animal.species 
        end.uniq
    end
    def find_by_species(species)
        animals.select do |animal|
            animal.species == species
        end
    end    

    def animal_nicknames
        animals.map do |animal|
            animal.nickname 
        end
    end

    def self.all 
        @@all_zoos
    end   

end
