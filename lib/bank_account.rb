require 'pry'

class BankAccount
  
  attr_accessor :balance, :status
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
    puts "Your balance is $#{@balance}."
  end
  
  def valid? 
    true if (@status = "open" && @balance > 0)
  end
end
