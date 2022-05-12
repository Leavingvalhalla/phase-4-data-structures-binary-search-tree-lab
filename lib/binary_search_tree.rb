require_relative './node'

class BinarySearchTree
  attr_accessor :root

  def initialize(root = nil)
    @root = root
  end

  def search(value, root = @root)
    return nil if root == nil
    if value == root.value
      root
    elsif value > root.value
      search(value, root.right)
    else
      search(value, root.left)
    end
  end


  def insert(value, root=@root)
    if @root == nil
      @root = Node.new(value)
      return @root
    end

    if value == root.value
      puts "equals"
      return root
    elsif value > root.value
      puts "greater than"
      if root.right
        insert(value, root.right)
      else
        new_node = Node.new(value)
        root.right = new_node
        new_node        
      end
    else
      puts "less than"
      if root.left
        insert(value, root.left)
      else
        new_node = Node.new(value)
        root.left = new_node
        new_node
      end
    end
  end

end 