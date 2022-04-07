# frozen_string_literal: true

# contains a value and direction
class Node
  attr_accessor :next, :data

  def initialize(data)
    @next = nil
    @data = data
  end
end
