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

      if letter == "M"
        #if letter is M --- > move()
        move()

      elsif letter == "L" || letter == "R"
        #else if letter is L or R  ----> turn(letter)
        turn(letter)

      else
        #else  Return "Error"
        "Error"
      end
    end
  end

  def move()
    # affects the position of the rover. Depending on current direction and position, you'll need to update the x or y coordinates.

    if @direction == "N"
      @x_axis += 1
    elsif @direction == "E"
       @y_axis += 1
    elsif @direction == "W"
      @x_axis -= 1
    elsif @direction == "S"
      @y_axis -= 1
    else
      @direction = "Error"
    end

  end

  def turn(direction)

    # affects the direction of the rover. Depending on the current direction of the rover, the new direction will be determined with either turning L or R.

    # if @direction is N && letter is R OR if @direction is S && letter is L
      # change @direction to E
      if (@direction == "N" && direction == "R") || (@direction == "S" && direction == "L")
        @direction = "E"

    # else if @direction is E && letter is R OR @direction is W && letter is L
      # change @direction to S
    elsif (@direction == "E" && direction == "R") || (@direction == "W" && direction == "L")
        @direction = "S"

    # else if @direction is S && letter is R OR @direction is N and letter is L
      # change @direction to W
      elsif (@direction == "S" && direction == "R" ) || (@direction == "N" && direction == "L")
        @direction = "W"

    # else if @direction  is W && letter is R OR @direction is E && letter is L
      # change @direction to N
      elsif (@direction == "W" && direction == "R") || (@direction == "E" && direction == "L")
        @direction = "N"

    end
  end

  def current_position

    p "#{@x_axis} #{@y_axis} #{@direction}"

  end
end

#displays the initial position
curiosity = MarsRover.new(8, 2, "W")
curiosity.current_position

# display the postion after above instruction
curiosity.read_instructions("LMLMRM")
curiosity.current_position

# Another Result to Varify
curiosity.read_instructions("RMLM")
curiosity.current_position
