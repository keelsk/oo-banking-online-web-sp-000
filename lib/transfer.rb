class Transfer
  # your code here
  attr_accessor :balance
  
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
    if !(@sender.valid?) || (@sender.balance - @amount < 0)
      puts "The transaction rejected. Please check your account balance."
    end
  end
  
end
