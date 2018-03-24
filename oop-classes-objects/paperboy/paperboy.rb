class Paperboy

  def initialize (name, experience)
    @name = name
    @experience = experience
    @earnings
  end

  def qouta
    return (50 + experience/2)
  end

  def deliver(start_address, end_address)
    house = end_address - start_address
    @earnings += (house * 0.25)
    @experience += house
  end

  def report
    p "I'm #{@name}, I've delivered #{experience} papers and I've earned $#{@earnings} so far"
  end
end


tommy = Paperboy.new("Tommy", 40)
charlie = Paperboy.new("Charlie", 20)

tommy.deliver(20, 50)
tommy.define

charlie.deliver(50, 100)
charlie.define
