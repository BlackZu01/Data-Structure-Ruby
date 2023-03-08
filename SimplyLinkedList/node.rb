class Node
    attr_accessor :value
    attr_accessor :next

    def initialize(value)
        @value = value 
        @next = nil
    end

    def to_s
        return "#{@value}"
    end
end 