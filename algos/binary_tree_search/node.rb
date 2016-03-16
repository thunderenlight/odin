class Tree

		Node = Struct.new(:value, :left, :right)
		attr_accessor :value, :parent, :child, :left, :right

	def initialize(root_node = nil )
		@parent ||= parent
		@child ||= child
		@root_node = Node.new(root_node, nil, nil) unless root_node.nil?

	end

	def build_tree(array)
		# turn array into a binary tree full of node objects in right place
		#if array is sorted the lowest number is parent one and subsequent numbers are on the right 
		# parent points to 2 children nodes
		#iterate through array and forEach item, item+1 and item+2 are children item at index % 3 ==0parent(Hash.inject{item % 2==0 })
		#{parent => {first_child => 1, second_child =>2}}
		# branch = {}
		# array.each_with_index do |item, index|
		# 	if item % 3 == 0 
		# 		branch[item] = array[index+1..index+2]
		# 	end
		# end
		# branch
		new_node = Node.new(value, nil, nil)
		@root_node = new_node and return if @root_node.nil?
		

	end

	# def build_sort_tree(unsorted_array)
	# 	# iterate through array and if num is smaller put in left array
	# 	#  node for each of the possible cases(size place parent no of children)
	# 	# if item < item +1 left << item else right << item
	# 	# if item < left_array[1] << left_array[1][1]
	# 	# tree.values.min.min ==val ? tree.values.min.max ==? then tree.values.min.max = v
	# 	# if !left self.left = Node.new(v)

	# end

	def breadth_first_search(target_value)
		#  
		# iterate tree keys and if key > val go to next child if child has child if not smaller go to 
		# the last child siblingand compare if < go to next node
		return node

	end

	def depth_first_search
		# iterate through array and if num is smaller put in left array
		# tree.values.min.min ==val ? tree.values.min.max ==? then tree.values.min.max = v


	end



	def self.value
	end
end

test_array = [1, 7, 4, 23, 8, 9, 4, 3, 5, 7, 9, 67, 6345, 324]

bstest = Tree.new