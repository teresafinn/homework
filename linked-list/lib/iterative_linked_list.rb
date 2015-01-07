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
    if @last_node
      @last_node.name
    else 
      nil
    end
  end

  def delete(name)
    @node_count = @node_count - 1
  end

end

# Josh's linked list solution: https://github.com/jmejia/data_structures_and_algorithms/tree/master/linked_lists




class Node
  attr_reader :name
  attr_accessor :next

  def initialize(inputted_name)
    @name = inputted_name
    @next = nil
  end

end

first_node = Node.new("a")
second_node = Node.new("b")





























#objects interact with each other! This will show us how objects interact. I want to create two classes: one of nodes and one telling the nodes what to do (creating the linked list). in my node class, i will simply have the nodes. in my interative linked list class i will put how i want the nodes linked together/how they behave. 

