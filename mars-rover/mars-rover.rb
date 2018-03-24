class MarsRover
# defines states
  def initialize(x_axis, y_axis, direction)
    @x_axis = x_axis
    @y_axis = y_axis
    @direction = direction
  end

# define all behaviors
  def read_instructions(string) # "LMLMLMLM"
    # should accept an instruction and decide whether to tell the rover to move or turn. It simply delegates to more specific behaviour.
    string = string.split('')
    string.each do |letter|
      if letter
        #if letter is M --- > move()
        #else if letter is L or R  ----> turn(letter)
        #else  Return "Error"
      end
    end
  end

  def move()
    # affects the position of the rover. Depending on current direction and position, you'll need to update the x or y coordinates.
    x_axis
  end

  def turn(direction)

    # affects the direction of the rover. Depending on the current direction of the rover, the new direction will be determined with either turning L or R.

    # if @direction is N && letter is R OR if @direction is S && letter is L
      # change @direction to E

    # else if @direction is E && letter is R OR @direction is W && letter is L
      # change @direction to S

    # else if @direction is S && letter is R OR @direction is N and letter is L
      # change @direction to W

    # else if @direction  is W && letter is R OR @direction is E && letter is L
      # change @direction to N
  end

end
