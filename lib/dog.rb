# Add your code here
require 'pry'

class Dog
  @@all = []
  attr_reader :name

  def initialize(name)
    @name = name
    save
  end

  def save
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def self.clear_all
    # binding.pry
    @@all = []
  end

  def self.print_all
    # return Dog.all.map { |dog| dog.name }.join("\n")
    puts Dog.all.map { |dog| dog.name }.join("\n")
  end

end