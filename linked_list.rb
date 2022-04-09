# frozen_string_literal: true

require_relative 'node'

# Represents the full list of data
class LinkedList
  attr_accessor :head, :tail, :size

  def initialize
    @head = nil
    @tail = nil
    @next_node = nil
    @size = 0
  end

  def print_data
    p "Size: #{@size}"
    p "Head: #{@head.data unless @head.nil?}"
    p "Tail: #{@tail.data unless @tail.nil?}"
    p "Next: #{@next_node.data unless @next_node.nil?}"
    p '--------------------'
  end

  def append(value)
    if @head.nil?
      @head = Node.new(value, @next_node)
      @next_node = @head
    else
      @tail = Node.new(value, nil)
      @next_node.pointer = tail
      @next_node = tail
    end
    @size += 1
    print_data
  end

  def prepend(value)
    new_head = Node.new(value, @head)
    @head = new_head
    @size += 1
    print_data
  end
end

# how can we print the values of our linked list in order?
