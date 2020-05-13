class Dog

@@all = []

    attr_accessor :name

    def initialize(name)
        @name = name
        save
    end

    def self.all
        @@all
    end

    def self.print_all
        Dog.all.map do |dogs|
            puts dogs.name
        end
    end

    def save
        Dog.all << self
    end

    def self.clear_all
        Dog.all.clear
    end

end