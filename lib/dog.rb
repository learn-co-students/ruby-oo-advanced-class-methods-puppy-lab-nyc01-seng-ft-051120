class Dog
    attr_accessor :name
    @@all = []
   

    def initialize(name)
        @name=name
        save
    end

    def self.all
        @@all
    end

    def save
        Dog.all << self
    end

    def self.clear_all
        self.all.clear
    end

    def self.print_all
        self.all.each do |dog_instance|
            puts dog_instance.name
        end
    end

end

