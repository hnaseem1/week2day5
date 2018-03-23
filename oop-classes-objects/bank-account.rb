class BankAccount

  def initialize
    @balance = 1900
    @interest_rate = 1.07
  end

  def deposit(amount)
    @balance += amount
  end

  def return_balance
    @balance
  end

  def withdraw(amount)
    @balance -= amount
  end

  def gain_interest
    @balance *= @interest_rate
  end
end

#1
ins = BankAccount.new

#3
ins.deposit(90)
p ins.return_balance

#4
ins.withdraw(200)
p ins.return_balance

#5
ins.gain_interest
p ins.return_balance
