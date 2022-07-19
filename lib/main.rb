class Node
  attr_accessor :value, :next_node

  def initialize(value = nil)
    @value = value
    @next_node = nil
  end
end

class LinkedList
  attr_accessor :head

  def initialize()
    @head = nil
  end

  def append(value)
    if @head == nil
      @head = Node.new(value) 
    else
      temp = @head
      until temp.next_node == nil
        temp = temp.next_node
      end
      temp.next_node = Node.new(value)
    end
  end

  def prepend(value)
    if @head == nil
      @head = Node.new(value)
    else
      temp = @head
      @head = Node.new(value)
      @head.next_node = temp
    end
  end

  def to_s
    temp = @head
    until temp == nil
      puts "#{temp.value} => "
      temp = temp.next_node
    end
  end
end

my_list = LinkedList.new()
my_list.append(8)
my_list.append(2)
my_list.append(6)
my_list.prepend(77)
my_list.to_s