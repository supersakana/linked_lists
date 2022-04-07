# frozen_string_literal: true
require_relative 'node'

# Represents the full list of data
class LinkedList
  attr_accessor :name

  def initialize
    @head = nil
    @tail = nil
  end

  def print_list
    puts "test works"
  end
end
