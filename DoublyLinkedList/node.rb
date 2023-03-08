class Node
    attr_accessor :value
    attr_accessor :next
    attr_accessor :prev

    def initialize(value)
        @value = value 
        @next = nil
        @prev = nil
    end

    def to_s
        return "#{@value}"
    end
end 