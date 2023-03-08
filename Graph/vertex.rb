class Vertex
    attr_accessor :value
    attr_accessor :adj

    def initialize(value)
        @value = value 
        @adj = []
    end
end 