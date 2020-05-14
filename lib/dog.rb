#require 'pry'

class Dog

   attr_accessor :name

   @@all = []

   def initialize(name)
      @name = name
      save
   end

   def self.all
      @@all
   end

   def self.print_all
      @@all.each { |dog| puts dog.name }
   end

   def save
      @@all << self
   end

   def self.clear_all
      @@all.clear
   end


end

#maizey = Dog.new("Maizey")
#Dog.all
#Dog.print_all
#
#snoopy = Dog.new("Snoopy")
#Dog.all
#Dog.print_all
#
#
