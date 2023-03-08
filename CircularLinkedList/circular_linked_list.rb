require('./node.rb')

class CircularLinkedList
    attr_accessor :root
    attr_accessor :tail

    def initialize
        @root = nil 
        @tail = nil 
    end 

    def add_node(value)
        new_node = Node.new(value)
    end 

    def values 
        prov = []
        current = @root 
        while current 
            prov.push(current.value)
            current = current.next
        end 
        return prov
    end 

    def to_s
    
    end 
end 