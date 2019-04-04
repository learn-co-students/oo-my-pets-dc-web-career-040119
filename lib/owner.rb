require 'pry'

class Owner

  attr_reader :species
  attr_accessor :pets, :name

  @@all = []

  def initialize(species)
    @pets = {fishes: [], cats: [], dogs: []}
    @species = species
    @@all << self
    #@name = name
  end

  def self.all
    @@all
  end

  def self.count
    @@all.size
  end


  def self.reset_all
    @@all.clear
  end


  def say_species
    return "I am a #{self.species}."
  end

  def name
    @name
  end

  def buy_fish(name)
  #      can buy a fish that is an instance of the Fish class (FAILED - 9)
  #      knows about its fishes (FAILED - 10)
    self.pets[:fishes] << Fish.new(name)
  end

  def buy_cat(name)
  #      can buy a cat that is an instance of the Cat class (FAILED - 11)
  #      knows about its cats (FAILED - 12)
  self.pets[:cats] << Cat.new(name)
  end

  def buy_dog(name)
  #      can buy a dog that is an instance of the Dog class (FAILED - 13)
  #      knows about its dogs (FAILED - 14)
    self.pets[:dogs] << Dog.new(name)
  end

  def walk_dogs
    self.pets[:dogs].each do |dog|
      dog.mood = "happy"
    end
  #      walks the dogs which makes the dogs' moods happy (FAILED - 15)
  end

  def play_with_cats
#      plays with the cats which makes the cats moods happy (FAILED - 16)
  self.pets[:cats].each do |cat|
    cat.mood = "happy"
  end
end


  def feed_fish
    self.pets[:fishes].each do |fish|
      fish.mood = "happy"
  #      feeds the fishes which makes the fishes' moods happy (FAILED - 17)
  end
end

  def sell_pets
  #      can sell all its pets, which make them nervous (FAILED - 18)
    self.pets.each do |species, pets_of_this_species|
      pets_of_this_species.each do |pet|
        pet.mood = "nervous"
      end
    end
    self.pets.clear
  end

  def list_pets
    fish_number = self.pets[:fishes].size
    dogs_number = self.pets[:dogs].size
    cats_number = self.pets[:cats].size
      "I have #{fish_number} fish, #{dogs_number} dog(s), and #{cats_number} cat(s)."
  end

end
