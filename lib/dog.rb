#require 'pry'

class Dog

   attr_accessor :name

   @@all = []

   def initialize(name)
      @name = name
      save
      binding.pry
   end

   def self.all
      @@all
      binding.pry
   end

   def self.print_all
      @@all.each { |dog| puts dog.name }
      binding.pry
   end

   def save
      @@all << self
      binding.pry
   end

   def self.clear_all
      @@all.clear
      binding.pry
   end


end

maizey = Dog.new("Maizey")
Dog.all
Dog.print_all

snoopy = Dog.new("Snoopy")
Dog.all
Dog.print_all


