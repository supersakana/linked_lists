# frozen_string_literal: true

require_relative 'linked_list'
require_relative 'node'

list = LinkedList.new
list.append('Z')
list.append('Y')
list.append('X')
list.prepend('W')
list.prepend('V')
