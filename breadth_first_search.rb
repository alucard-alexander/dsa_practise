def bfs(_n, _m, _edges, s)
  queue = []
  # nodes = Array.new(n) { -1 }
  queue << s
  visited = []
  visited[s - 1] = true

  until queue.empty?

  end
end

def bfs1(n, _m, edges, s)
  queue = [s]
  result = []
  visited = Array.new(n + 1) { false }
  distance = Array.new(n + 1) { -1 }

  graph = Hash.new { |hash, key| hash[key] = [] }
  edges.each do |edge|
    from, to = edge
    graph[from] << to
    graph[to] << from # Assuming the graph is undirected
  end

  distance[s] = 0
  queue = [[s, 0]]
  visited[s] = true

  # p queue

  until queue.empty?
    a = queue.shift
    node, w = a
    # result << node
    # visited.push(node)

    graph[node].each do |v|
      next unless visited[v] == false

      distance[v] = w + 6
      visited[v] = true
      queue << [v, w + 6]
    end
  end

  # p result
  # distance.shift()
  # distance.pop()
  distance[2..]
end

n = 5 # number of nodes
m = 3 # number of edges
edges = [[1, 2], [1, 3], [3, 4]]
s = 1 # starting node
# bfs(n, m, edges, s)
p bfs1(n, m, edges, s)
