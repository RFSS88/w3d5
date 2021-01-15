class PolyTreeNode
    attr_reader :parent, :children, :value
    
    def initialize(value)
        @value = value
        @parent = nil 
        @children = []
    end

     def parent=(new_parent)
        @parent = new_parent unless new_parent.nil?
        new_parent.children << self if !new_parent.nil? && !new_parent.children.include?(self)


     end


end