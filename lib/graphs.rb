require_relative "graph/node"
require_relative "graph/graph"
require_relative "graph/edge"
require_relative "algorithms/bfs"
require_relative "algorithms/dfs"
require_relative "algorithms/dijsktra"
require_relative "algorithms/union_find"
require_relative "algorithms/kruskal"
require_relative "algorithms/prim"
require_relative "algorithms/topological_sorting"
require_relative "algorithms/bellmanford"

module Graphs
  VERSION = "0.0.1"
  INFINITE = 1e100
  GREEN = "#188A00"
  BLACK = "#000000"
  WHITE = "#FFFFFF"
  YELLOW = "#F3F304"
  RED = "#F32404"
  PURPLE = "#40046B"
end
