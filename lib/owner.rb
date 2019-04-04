require_relative 'fish.rb'
require_relative 'dog.rb'
require_relative 'cat.rb'

class Owner
  attr_reader :species
  attr_accessor :name, :pets

  @@all = []

  def initialize(name)
    @name = name
    @species = 'human'
    @@all << self
    @pets = { fishes: [], cats: [], dogs: [] }
  end

  def self.all
    @@all
  end

  attr_reader :name

  def self.count
    @@all.count
  end

  def self.reset_all
    @@all.clear
  end

  def say_species
    "I am a #{species}."
  end

  def buy_fish(name)
    pets[:fishes] << Fish.new(name)
  end

  def buy_cat(name)
    pets[:cats] << Cat.new(name)
  end

  def buy_dog(name)
    pets[:dogs] << Dog.new(name)
  end

  def walk_dogs
    pets[:dogs].each do |dog|
      dog.mood = 'happy'
    end
  end

  def play_with_cats
    pets[:cats].each do |cat|
      cat.mood = 'happy'
    end
  end

  def feed_fish
    pets[:fishes].each do |fish|
      fish.mood = 'happy'
    end
  end

  def sell_pets
    self.pets.each do |type, pets_arr|
      pets_arr.each { |pet| pet.mood = "nervous" }
      pets_arr.clear
    end
  end

  def list_pets
    "I have #{self.pets[:fishes].count} fish, #{self.pets[:dogs].count} dog(s), and #{self.pets[:cats].count} cat(s)."
  end
end

# angela = Owner.new("Angela")
#
# angela.buy_dog("Suki")
# angela.buy_dog("Cool James")
# angela.buy_fish("Bubbles")
# angela.buy_cat("Mr. Moneybags")
#
# angela.walk_dogs
#
#
# # angela.sell_pets
#
# puts angela.pets
# puts angela.pets.each {|type, pets| pets.empty?} == true


#
# puts angela.pets[:fishes].count == 1
