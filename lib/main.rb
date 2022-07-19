class LinkedList

end

class Node
  attr_accessor :value, :next_node

  def initialize(value = nil)
    @value = value
    @next = nil
  end
end