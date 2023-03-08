class Graph
    attr_accessor :adj_mat
    attr_accessor :graph 

    def initialize(dir_graf)
        @graph = dir_graf
        @adj_mat = []
    end 

    def add_vertex(vertex)
        unless @graph.include?(vertex)
            @graph[vertex] = []
        end 
    end 

    def add_edge(vertex, new_vertex)
        @graph[vertex].push(new_vertex)
    end 

    def add_edges(vertex, array_vertex)
        for item in array_vertex
            @graph[vertex].push(item)
        end
    end

    def generate_adj_mat()
        
    end
end 

direc = {
    'A' => ['B'],
    'B'=> []
}

grafo = Graph.new(direc)

grafo.add_vertex('M')
grafo.add_edge('A', 'M')
# grafo.add_edge('B', 'A')
# grafo.add_edge('B', 'M')

grafo.add_edges('B', ['A', 'M'])

puts grafo.graph