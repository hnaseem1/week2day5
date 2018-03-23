class Cat
  def initialize(name, preferred_food, meal_time)
    @name = name
    @preferred_food = preferred_food
    @meal_time = meal_time
  end

  def eats_at
    if @meal_time < 12
      return "#{@meal_time} AM"
    else
      return "#{@meal_time} PM"
    end


  end

  def meow
    p "My name is #{@name} and I eat #{@preferred_food} at #{eats_at}"
  end

end

cat1 = Cat.new("sparky", "tuna", 12)
cat2 = Cat.new("mittens", "beef", 9)

cat1.meow
cat2.meow
