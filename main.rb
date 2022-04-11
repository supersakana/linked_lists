# frozen_string_literal: true

require_relative 'linked_list'
require_relative 'node'

list = LinkedList.new
list.append('Z')
list.append('Y')
list.append('X')
list.prepend('W')
list.prepend('V')

# list.contains?('A')
list.printer
list.find('V')
list.find('W')
list.find('X')
list.find('Y')
list.find('Z')

# list.pop

# p list.at(0)
# p list.at(1)
# p list.at(2)
# p list.at(3)
# p list.at(4)
