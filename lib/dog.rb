require "pry"

class Dog
attr_reader :name

    @@all = []

    def initialize(name)
        @name = name
        self.save
    end 

    def self.all
        @@all
    end 

    def self.print_all
        self.all.each do |dog_instance|
            puts dog_instance.name
        end 
    end 

    def save
        @@all << self
    end 

    def self.clear_all
        self.all.clear()
    end 
    # binding.pry

end 