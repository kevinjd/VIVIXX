class Challenge
  def initialize(first_food, second_food, last_food)
    @first_food = first_food
    @second_food = second_food
    @last_food = last_food
  end

  def first_food
    @first_food
  end

  def second_food
    @second_food
  end

  def all_food
    "#{@first_food} #{@second_food} #{@last_food}"
  end
end
