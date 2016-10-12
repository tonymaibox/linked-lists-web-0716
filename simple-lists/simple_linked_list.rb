class Node
	attr_accessor :data, :next

	def initialize(data, next_node)
		@data = data
		@next = next_node
	end

	# def next
	# 	@next
	# end

	# def data
	# 	@data
	# end

end

# node = Node.new(1, node2)
# # node.next
# node2 = Node.new(2, node3)
# # node.next.next
# node3 = Node.new(2, nil)

# node.next.next == node3
# node.next.next.next == nil

# linked_list = LinkedList.new(node)
# node.data
# linked_list.head == node
# linked_list.head.data == node.data

# list = LinkedList.new(1)
# list.head == 'some node we created with data = 1'
# list.head.data == 1

# linked_list = LinkedList.new(1)
# linked_list.head == Node.new(1, nil)

class LinkedList
	attr_accessor :head

	def initialize(data)
		# @counter = 0
		@head = Node.new(data, nil)
	end



	def index_at(index)
		node = self.head
		counter = 0
			while counter < index do
				if node.next == nil
					return nil
				else
					counter += 1
					node = node.next
				end
			end
		node.data
	end

	def insert_at_index(index_location, data)
		node = self.head
		counter = 0
		previous_data = 0
			while counter < index_location do
				if node.next == nil
					return nil
				elsif counter == index_location
					previous_data = node.data
					node.data = data
					if node.next
						node.next.data = previous_data
					else
						linked_list.head(previous_data)
					end
				else
					counter += 1
					node = node.next
				end
			end
		node.data
	end

end














