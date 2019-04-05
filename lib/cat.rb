class Cat
  # code goes here
    @@all=[]
  attr_reader :name
  attr_accessor :mood

  def initialize(name)
    @name = name
    @mood = "nervous"
    @@all << self
  end

def self.all
    @@all
  end
end


# sintactic sugar Two ways to write the same thing
