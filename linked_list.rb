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

  def at(index)
    return @head.data if index.zero?

    current_node = @head.pointer
    i = 1
    while i < index
      current_node = current_node.pointer
      i += 1
    end
    current_node.data
  end
end

# QUESTIONS

# how can re fetch a specific node according to it's index? (WIP)

# BUGS

# Check the conditional statement at(index) to see how to return @head at the propper index

# Iterator skips head when inputted at 0 (look into append, prepend, at(index), and print methods to fix bug))
