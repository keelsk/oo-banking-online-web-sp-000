require 'pry'

class BankAccount
  
  attr_reader :name

  def initialize(name)
    @name = name
    @balance = 1000
    @status = "open"
  end
  
  def balance
    @balance
  end
  
  def status
    @status
  end
  
  def deposit(amount)
    @balance = @balance + amount
  end
  
  def display_balance
    puts "Your balance is $#{self.balance}."
    binding.pry
  end
end
