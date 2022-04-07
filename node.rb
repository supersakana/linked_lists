# frozen_string_literal: true

# require_relative 'linked_list'

# contains a value and pointer
class Node
  attr_accessor :data, :pointer

  def initialize(data, pointer)
    @pointer = pointer
    @data = data
  end
end
