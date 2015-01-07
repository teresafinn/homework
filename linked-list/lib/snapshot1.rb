class IterativeLinkedList  

  def initialize
    @node_count = 0
    @head_node = nil
    @last_node = nil
  end

  def count 
    @node_count
  end

  def push(node_name)
    @new_node = Node.new(node_name)
    if @head_node == nil 
      @head_node = @new_node
      @last_node = @new_node
    else
      @last_node = @new_node
    end
    @node_count = @node_count + 1
  end

  def pop
    @node_count = @node_count - 1
    @last_node.name
  end

end





class Node
  attr_reader :name

  def initialize(inputted_name)
    @name = inputted_name
  end

end

#objects interact with each other! This will show us how objects interact. I want to create two classes: one of nodes and one telling the nodes what to do (creating the linked list). in my node class, i will simply have the nodes. in my interative linked list class i will put how i want the nodes linked together/how they behave. 

