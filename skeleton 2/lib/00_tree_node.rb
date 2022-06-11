class PolyTreeNode
    def initialize(value)
        @parent = nil
        @children = []
        @value = value
    end

    attr_reader :parent, :children, :value

    def parent=(p_node)
        return true if @parent == p_node
        if p_node == nil
            @parent.children.delete(self)
            @parent = p_node
        end
        if @parent == nil
            @parent = p_node
            p_node.children << self 
        else 
            @parent.children.delete(self)
            @parent = p_node
            p_node.children << self 
        end
    end

    def add_child(child_node)
        child_node.parent = (self)  
    end

    def remove_child(child_node)
        raise "error" if !self.children.include?(child_node)
        child_node.parent = nil
    end

    def dfs(target)
        return self if self.value == target
        
    end
end
