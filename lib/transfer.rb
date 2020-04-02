require 'pry'

class Transfer

  attr_accessor :status, :amount
  attr_reader :sender, :receiver

  def initialize(sender, receiver, amount)
    @status = "pending"
    @sender = sender
    @receiver = receiver
    @amount = amount
  end

  def valid?
    @sender.valid? && @receiver.valid?
  end

  def execute_transaction
    binding.pry
    if @sender.balance > @amount && @status = "pending" && self.valid?
      @sender.balance -= @amount
      @receiver.balance += @amount
      @status = "complete"
      binding.pry
    else
      @status = "Transaction rejected. Please check your account balance."
    end
    binding.pry
  end

  def reverse_transfer

  end

end
