class PolyTreeNode
    attr_reader :parent, :children, :value
    
    def initialize(value)
        @parent = nil 
        @value = value
        @children = []
    end

     def parent=(new_parent)
        @parent = new_parent
        #new_parent --> is a parent of it
        #new_parent = nil --> @parent = root
        if !new_parent.nil?
            new_parent.children << self if !new_parent.children.include?(self)
        else
            return nil 
        end 
     end

end

n1 = PolyTreeNode.new("root1")
n2 = PolyTreeNode.new("root2")
n3 = PolyTreeNode.new("root3")

# # connect n3 to n1
# n3.parent = n1    n1: chilren [n3]
# # connect n3 to n2 
# n3.parent = n2    n2 :children[n3]

# # this should work
# raise "Bad parent=!" unless n3.parent == n2
# raise "Bad parent=!" unless n2.children == [n3]

# # this probably doesn't
# raise "Bad parent=!" unless n1.children == []