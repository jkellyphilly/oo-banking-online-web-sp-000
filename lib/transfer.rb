class Transfer

  attr_accessor :status

  def initialize(sender, receiver)
    @status = "pending"
  end

end
