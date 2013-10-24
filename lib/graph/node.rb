module Graphs
  class Node
    require "set"

    attr_accessor :name, :adjacents, :value, :graph
    attr_reader :color

    def initialize(name)
      @adjacents = Set.new
      @name = name
      @color = BLACK
      @value = INFINITE
    end

    def adjacents
      graph.edges.select{|e| e.from == self}.map(&:to)
    end

    def adjacent_edges
      graph.edges.select{|e| e.from == self}
    end

    def to_s
      @name
    end

    def visited!
      @color = GREEN
    end

    def colorize(color)
      @color = color
    end
  end
end
