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

  def size
    if @head == nil
      return 0
    else
      counter = 0
      temp = @head
      until temp == nil
        counter += 1
        temp = temp.next_node
      end
      return counter
    end
  end

  def head
    return @head.value
  end

  def tail
    if @head == nil
      return nil
    else
      temp = @head
      while true
        if temp.next_node == nil
          return temp.value
        else
          temp = temp.next_node
        end
      end
    end
  end

  def at(index)
    return nil if @head == nil
    temp = @head
    index.times do 
      temp = temp.next_node
      break if temp == nil
    end
    return nil if temp == nil
    return temp.value
  end

  def pop
    if @head == nil
      return nil
    else
      temp = @head
      until temp.next_node.next_node == nil
          temp = temp.next_node
      end
      popped = temp.next_node.value
      temp.next_node = nil
      return popped
    end
  end

  def contains?(value)
    temp = @head
    until temp == nil
      return true if temp.value == value
      temp = temp.next_node
    end
    return false
  end

  def find(value)
    i = 0
    temp = @head
    until temp == nil
      return i if temp.value == value
      i += 1
      temp = temp.next_node
    end
    return nil
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
my_list.append(43)
my_list.prepend(9)
my_list.prepend(77)
puts "Size: #{my_list.size}"
puts "Head: #{my_list.head}"
puts "Tail: #{my_list.tail}"
puts "At index 2: #{my_list.at(2)}"
puts "Popped: #{my_list.pop}"
puts "Contains 2?: #{my_list.contains?(2)}"
puts "Find index of 6: #{my_list.find(6)}"
my_list.to_s