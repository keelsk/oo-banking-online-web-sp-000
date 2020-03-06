require 'pry'
class Transfer
  # your code here
  attr_accessor :balance, :bankaccount
  
  def initialize(sender, receiver, amount)
    @sender = sender
    @receiver = receiver
    @amount = amount
    @transfer_status = "pending"
  end
  
  def sender
    @sender
  end
  
  def receiver
    @receiver
  end
  
  def status
    @transfer_status
  end
  
  def valid?
    if (@sender.valid? && @receiver.valid?)
      true
    else
      false
    end
  end
  
  def amount
    @amount
  end
  
  def execute_transaction
    if (@sender.balance < @amount)
      @transfer_status = "The transaction rejected. Please check your account balance."
    elsif (@transfer_status == "complete")
      @transfer_status = "complete"
    else
            binding.pry
      @sender.balance = @sender.balance - self.amount
      @receiver.balance = @receiver.balance + self.amount
      @transfer_status = "complete"
    end
  end
  
  def reverse_transfer
    if @transfer_status == "complete"
        @sender.balance = @sender.balance + @amount
        @receiver.balance = @receiver.balance - @amount
        @transfer_status = "reversed"
    end
  end
  
end
