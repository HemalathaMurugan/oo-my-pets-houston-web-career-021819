
class Fish
  #attr_reader :name
  #attr_accessor :mood

  # I didnt use the attr_reader, attr_accessor, attr_writer here. Still it works.
  #But thats the shortcut to have the getter and setter methods defined below
  def initialize(fish_name)
    @fish_name = fish_name
    @fish_mood = "nervous"
  end

#getter method for name. Coz we are not going to change the name
  def name
    @fish_name
  end
#setter method for mood
  def mood=(mood)
    @fish_mood = mood
  end
#getter method for mood
  def mood
    @fish_mood
  end

end
