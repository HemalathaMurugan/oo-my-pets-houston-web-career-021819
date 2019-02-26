class Cat
  attr_reader :name
  attr_accessor :mood

  def initialize(name)
    @cat_name = name
    @cat_mood = "nervous"
  end

  def name
    @cat_name
  end

  def mood=(mood)
    @cat_mood = mood
  end

  def mood
    @cat_mood
  end
end
