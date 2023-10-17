class LinkedList

  attr_reader :head, :data

  def initialize()
    @head = nil
  end

  def append(data)
    #list.append(string) = data
    #string = data
    #data = Node.new(data)
    #list.append = Node.new(data)
    #@data = Node.new(data)
    #list = Node.new(data)
    new_node = Node.new(data)
    if @head == nil
      then @head = new_node
    else @next_node = new_node
      
    end
  end

  def count
    return 0 if head == nil
    node = @head
    counter = 0
    while node do
      node = node.next_node
      counter += 1
    end
    counter
  end

  def to_string
    #@data
    #@head
    #p @data
    #result = @data
    #for @head
    head.data.to_s 
  end

  def prepend(data)
    #list.append(string) = data
    #string = data
    #data = Node.new(data)
    #list.append = Node.new(data)
    #@data = Node.new(data)
    #list = Node.new(data)
    @head = Node.new(data)
  end

end