require './node.rb'

class LinkedList
    attr_accessor :root
    attr_accessor :tail
    attr_accessor :values 
    attr_accessor :prev 

    def initialize()
        @root = nil 
        @tail = nil 
    end

    def add_node(value)
        new_node = Node.new(value)
        if @root == nil 
            @root = new_node 
            @tail = new_node 
            return
        end     
        @tail.next = new_node 
        @tail = new_node 
    end 

    def add_multiples_nodes(values)
        # puts "Te amo mucho, mi amor precioso, realmente eres mi cielo hermoso, te amo con todo mi corazón y eres absolutamente todo para mí , 
        # realmente eres increible y quiero pasar cada dia a tu lado, me haces feliz, simplemente amo estar a tu lado y me encanta estar todos los dias a tu lado
        # poder verte todos los dias, porder besarte y abrazarte :3, por ti haría cualquier cosa mi rey, porque tu vales toda la pena :3"
        values.each do |data|
            self.add_node(data)
        end
    end

    def remove_node(value)
        temporal = @root 
        searching = Node.new(value)

        while temporal.value != searching.value
            @prev = temporal 
            temporal = temporal.next
        end 
        @prev.next = temporal.next
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

    def show_list
        node = @root 
        return self.values.join(' -> ')
    end
end

list = LinkedList.new

list.add_node(5)
list.add_node(7)
list.add_node(73)

list.remove_node(7)
puts list.show_list

list.add_multiples_nodes([1, 3, 5, 9, 4])

puts list.show_list