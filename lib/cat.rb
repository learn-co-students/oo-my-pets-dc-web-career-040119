class Cat
  # code goes here
    @@all=[]
  attr_reader :name, :mood

  def initialize(name)
    @name = name
    @mood = "nervous"
    @@all << self
  end

  def mood=(mood)
    @mood = mood

  end

  def self.all
    @@all
  end
end
