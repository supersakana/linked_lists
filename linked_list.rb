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

  def append(value)
    if @head.nil?
      @head = Node.new(value, nil)
      @next_node = head
    else
      @tail = Node.new(value, nil)
      @next_node = tail
    end
    @size += 1
  end

  def prepend(value)
    @head = Node.new(value, @next_node)
    @size += 1
  end
end
