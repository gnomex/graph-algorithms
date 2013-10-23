class Node
  require "set"

  attr_accessor :name, :adjacents, :color, :value

  def initialize(name)
    @adjacents = Set.new
    @name = name
    @color = BLACK
    @value = INFINITE
  end

  def adjacents
    graph.edges.select{|e| e.from == self}.map(&:to)
  end

  def to_s
    @name
  end
end
