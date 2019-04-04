require 'pry'

class Owner
  # code goes here

  attr_reader :species
  attr_accessor :name, :pets

  @@all = []

  def initialize(species)
  	@species = species
  	@pets = {:fishes => [], :dogs => [], :cats => []}
  	@@all << self
  end 

  def say_species 
  	"I am a #{@species}."
  end

  def self.all 
  	@@all 
  end 

  def self.count
  	@@all.count
  end 

  def self.reset_all
  	@@all.clear
  end 

  def buy_fish(fish_name)
  	fish_name = Fish.new(fish_name)
  	self.pets[:fishes] << fish_name
  	#binding.pry
  end 

  def buy_cat(cat_name)
  	cat_name = Cat.new(cat_name)
  	self.pets[:cats] << cat_name
  	#binding.pry
  end 

  def buy_dog(dog_name)
  	dog_name = Dog.new(dog_name)
  	self.pets[:dogs] << dog_name
  	#binding.pry
  end 

  def walk_dogs
  	Dog.all.each do |dog|
  		dog.mood = "happy"
  	end 
  end 

  def play_with_cats
  	Cat.all.each do |cat|
  		cat.mood = "happy"
  	end 
  end 

  def feed_fish
  	Fish.all.each do |fish|
  		fish.mood = "happy"
  	end 
  end 

  def sell_pets
  	#binding.pry
  	self.pets.each do |species, my_pets|
  		my_pets.each do |instance|
  			instance.mood = "nervous"
  		end 
  		my_pets.clear
  	end
  end 

  def list_pets

  	counts = {}
  	self.pets.each do |species, my_pets|
  		counts[species] = my_pets.count
  	end

  	"I have #{counts[:fishes]} fish, #{counts[:dogs]} dog(s), and #{counts[:cats]} cat(s)."
  end 

end 



