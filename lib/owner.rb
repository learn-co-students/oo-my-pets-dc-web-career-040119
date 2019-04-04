
require 'pry'
class Owner
  # code goes here

  @@all=[]
  attr_reader :species
  attr_accessor :name, :fish, :dog, :cat, :pets
  def initialize(species)
    @species = species
    @pets = {:cats=>[], :dogs=>[], :fishes=>[]}
    @@all<< self
# binding.pry

  end
  def self.all
    @@all
  end
  def self.count
    @@all.length
  end
  def self.reset_all
    @@all.clear
  end

  def say_species
    "I am a #{species}."
  end



  def buy_fish(fish_name)
      fish = Fish.new(fish_name)
      pets[:fishes] << fish
      # binding.pry
      return fish
  end

  def buy_cat(cat_name)
      cat = Cat.new(cat_name)
      pets[:cats] << cat
      # binding.pry
      return cat
  end

  def buy_dog(dog_name)
      dog = Dog.new(dog_name)
      pets[:dogs] << dog
      # binding.pry
      return dog
  end

  def walk_dogs
      len =  @pets[:dogs].length
      count = 0
    while count < len
      @pets[:dogs][count].mood= "happy"
      count += 1
    end
  end

  def play_with_cats
      len =  @pets[:cats].length
      count = 0
    while count < len
      @pets[:cats][count].mood= "happy"
      count += 1
    end
  end

  def feed_fish
      len =  @pets[:fishes].length
      count = 0
    while count < len
      @pets[:fishes][count].mood= "happy"
      count += 1
    end
  end

  def sell_pets

# getting a hash
# itirting returning keys
# checking arrays of each key to find the values
# check the mood of each pets in the array for nervous mood
# erase
    len =  @pets[:dogs].length
        count = 0
          while count < len
        @pets[:dogs][count].mood= "nervous"
            count += 1
          end
          len =  @pets[:cats].length
          count = 0
          while count < len
          @pets[:cats][count].mood= "nervous"
          count += 1
        end
        len =  @pets[:fishes].length
        count = 0
      while count < len
        @pets[:fishes][count].mood= "nervous"
        count += 1
      end
      @pets.delete(:dogs)
      @pets.delete(:cats)
      @pets.delete(:fishes)

      return @pets
    end

    def list_pets

    return "I have #{@pets[:fishes].length} fish, #{@pets[:dogs].length} dog(s), and #{@pets[:cats].length} cat(s)."

    end




end
