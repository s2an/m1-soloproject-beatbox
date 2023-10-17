class LinkedList

  attr_reader :head #:data, :next_node

  def initialize()
    @head = nil
  end

  def prepend(data)
    new_node = Node.new(data)
    #new_node.next_node = @head
    #@head = new_node
    if @head == nil
      new_node = @head
    end
  end

  def append(data)
    new_node = Node.new(data)
    if @head == nil
     @head = new_node
    else
      current_node = @head
      while current_node.next_node != nil
        current_node = current_node.next_node
      end
      current_node.next_node = new_node
    end
  end

  # incorporate find/search method to find index, then append!
  # def insert(index, data)
  #   new_node = Node.new(data)
  #   if @head == nil
  #     @head = new_node
  #   else
  #     current_node = @head
  #     while current_node != nil
  #       current_node = current_node.next_node
  #     end
  #     current_node.next_node = new_node
  #   end
  # end
    

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
    current = @head
    result = []
    while current
      result << current.data
      current = current.next_node
    end
    result.join(" ")
  end

  #to be continued

  # def find(where, how_many)
  #   nodes.each do |node|
      
  # end

  #to be continued

  # def includes?(data)
  #   nodes.each do |node|
  #     if node.includes(data)
  #       return true
  #     else
  #       false
  #     end
  #   end
  # end

  #find nil via next_node, move back and index, 
  #return the node, and then set that node to nil. 
  #Not the best way, but might work...
  
  # def pop
  #   list.index(next_node, -1)
  #   return node
  #   node = nil
  # end

end