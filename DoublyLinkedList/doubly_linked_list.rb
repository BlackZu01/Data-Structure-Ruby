require ('./node.rb')

class DoublyLinkedList
    attr_accessor :root 
    attr_accessor :tail 

    def initialize
        root = nil 
        tail = nil 
    end

    def add_node(value)
        new_node = Node.new(value)
        unless @root 
            @root = @tail = new_node
        end 
        new_node.prev = @tail 
        @tail.next = new_node
        @tail = @tail.next

    end 

    def add_multiples_nodes(values)
        values.each do |data|
            self.add_node(data)
        end 
    end

    def values
        prov = []
        node = @root 
        while node 
            prov.push(node)
            node = node.next 
        end 
        return prov 
    end 
    
    def to_s 
        return self.values.join(' <-> ')
    end 
end

list = DoublyLinkedList.new 

list.add_node(73)
list.add_node(5)
list.add_node(37)
list.add_node(7)

list.add_multiples_nodes([1, 2, 3])


puts list