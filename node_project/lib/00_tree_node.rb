class PolyTreeNode
    attr_reader :parent, :children, :value
    
    def initialize(value)
        @value = value
        @parent = nil 
        @children = []
    end

     def parent=(new_parent)
        self.parent = new_parent.value
        new_parent.children << self.value

     end


end