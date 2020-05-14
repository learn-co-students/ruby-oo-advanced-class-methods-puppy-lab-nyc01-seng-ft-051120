

class Dog

   @@all = []

   attr_accessor :name

   def initialize(name)
      @name = name
      save
   end

   def Dog.all
      @@all
   end

   def Dog.print_all
      self.all.each { |dog| puts dog.name }
   end

   def save
      @@all << self
   end

   def self.clear_all
      @@all.clear
   end


end
