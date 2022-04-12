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

  # adds a node to the end of the list
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
    # print_data
  end

  # adds a node to the start of the list
  def prepend(value)
    new_head = Node.new(value, @head)
    @head = new_head
    @size += 1
    # print_data
  end

  # returns data according to given index
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

  # removes last node at the tail of the list
  def pop
    current_node = @head.pointer
    until current_node.nil?
      if current_node.pointer == @tail
        @tail = current_node
        @tail.pointer = nil
      end
      current_node = current_node.pointer
    end
  end

  # returns true if contained value is within the linked list
  def contains?(value)
    current_node = @head
    included = false
    until current_node.nil?
      if current_node.data == value
        included = true
        break
      end
      current_node = current_node.pointer
    end
    included
  end

  # returns the index of a given value
  def find(value)
    current_node = @head
    i = 0
    until current_node.nil?
      p i if current_node.data == value

      current_node = current_node.pointer
      i += 1
    end
  end

  # returns string of linked list
  def to_s
    current_node = @head
    string = ''
    until current_node.nil?
      string += "(#{current_node.data}) -> "
      current_node = current_node.pointer
    end
    "#{string} nil"
  end

  # inserts the value at a given index of the linked list
  def insert_at(value, index)
    current_node = @head
    i = 0
    until i == index
      if i == index - 1
        inserted_node = Node.new(value, current_node.pointer)
        current_node.pointer = inserted_node
      end
      current_node = current_node.pointer
      i += 1
    end
  end

  # removes node at a given index
  def remove_at(index)
    current_node = @head
    i = 0
    until i == index
      if i == index - 1
        removed_node = current_node.pointer
        current_node.pointer = removed_node.pointer
      end
      current_node = current_node.pointer
      i += 1
    end
  end
end
