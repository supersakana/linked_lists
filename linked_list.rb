# frozen_string_literal: true

require_relative 'node'

# Represents the full list of data
class LinkedList
  attr_accessor :name

  def initialize
    @head = nil
    @tail = nil
    @next_node = nil
    @size = 0
  end

  def append(value)
    @current_node = Node.new(value, @next_node)
    @size += 1
    @next_node = @current_node
    p "Size:#{@size} Created: #{@current_node.data} Next: #{@next_node.pointer}"
  end
end
