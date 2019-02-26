require 'pry'
require 'cat.rb'
require 'dog.rb'
require 'fish.rb'

class Owner
  attr_accessor :pets
  # Just because I didnt add the above line, it kept showing -- undefined method pets=
  @@all = []

  def initialize(species = "human")
    @name = name
    @@all << self
    @species = species
    @pets = {:fishes => [], :dogs => [], :cats => []}
    # I missed the above step and it showed a bunch of errors.
    #Because despite giving the def pets -- method below, the pets hash has to be initialized.
    # Thatsy so many errors
  end
# In the following we are setting a default value of "human"  --- that means
#it is initialized with the (default) value of human
  def species(species_name = "human")
    @species
  end

  def say_species
    "I am a #{@species}."
  end

  def pets(pets = {:fishes => [], :dogs => [], :cats => []})
    self.pets = pets
  end

  def buy_fish(fish_name)
    new_fish = Fish.new(fish_name)
    self.pets[:fishes] << new_fish
  end

  def buy_cat(cat_name)
    new_cat = Cat.new(cat_name)
    self.pets[:cats] << new_cat
  end

  def buy_dog(dog_name)
    new_dog = Dog.new(dog_name)
    self.pets[:dogs] << new_dog
  end
# adding the following method cleared 6 failures. Probably the pets hash gets initialized
# or instantiated only if we do the def pets --- method
  def pets
    @pets
  end

  def walk_dogs
    self.pets[:dogs].each do |dog|
      dog.mood = 'happy'
    end
  end

  def play_with_cats
    self.pets[:cats].each do |cat|
      cat.mood = 'happy'
    end
  end

  def feed_fish
    self.pets[:fishes].each do |fish|
      fish.mood = 'happy'
    end
  end

  def sell_pets
    self.pets.each do |pet_name, pet_array|
      pet_array.each do |animal|
        animal.mood = 'nervous'
      end
      pet_array= []
    end
    self.pets = {:fishes => [], :dogs => [], :cats => []}
  end

  def list_pets
    fishes_count = self.pets[:fishes].length
    dogs_count = self.pets[:dogs].length
    cats_count = self.pets[:cats].length
    "I have #{fishes_count} fish, #{dogs_count} dog(s), and #{cats_count} cat(s)."
  end

  def name
    @name
  end
  def name=(value)
    @name = value
  end
  def self.all
    @@all
  end

  def self.reset_all
    @@all = []
  end

  def self.count
    @@all.length
  end
end
