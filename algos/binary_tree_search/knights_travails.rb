class Knight

	Square = Struct.new(:position, :moves, :parent)
	attr_reader :start_node

	def initialize(start)
		@board = Array.new(8) { Array.new(8) {" "} }
		# @knight_moves = []
		@start_node = Square.new(start, [], nil)

	end

	def knight_moves(start_array, end_array)
		# take the first spot coordinates << next steps...final coordinates
		# define a move a conditional coordinate based on the start point or parent 
		# until knight_moves.last == end_array move!
		knight_tree = Knight.new(start_array)
		destination = knight_tree.map_move(end_array)
		reverse_map(destination)

	end

	def reverse_map(pin_info)
		path =[]
		until pin.nil?
			path.unshift(pin[:position])
			pin = pin[:parent]
		end
		path
	end

	def map_move(finish)
		# if knight can move find coordinate 
		queue = Array.new
		queue.unshift(@start_node)
		until queue.empty?
			current = queue.pop
			if finish == current[:position]
				return current
			else
				plot(current) if current[:moves].empty?
				current[:moves].each {|move| queue.unshift(move)}
			end
		end
		nil

	end

	def plot(square)
		paths = possible_paths(square[:position])
		possible_paths.each {|path| square[:moves] << Square.new(path, [], square)}

	end
	def shortcut
		#evaluate the min and max of diff paths between start and this is a binary search in itself see notes 
	end


	def allowed_moves(square)
	
		#  		allowed_move << 
 		x,y = square[0],square[1]
 		paths = []
 		move_rules(x,y).each { |move| paths << move if move_allowed?(move)}
 		paths

	end

	def move_rules(x,y)
		#  spot.each do |x,y|
		#  	if spot[0] == x+2 || spot[0]x-2  && spot[1]  == y +1 || spot[1] == y -1
		[[x+2, y-1], [x+2, y+1],[x-2, y-1], [x-2, y+1], 
		[x+1, y+2], [x-1, y+2], [x+1, y-2], [x-1, y-2]]
	end

	def move_allowed?(move)
		# while @board == spot
		# allowed_move = []
		return true if move[0].between?(0, 7) && move[1].between?(0,7)
    false
	end

	def display_moves(moves)
		puts "You made it in #{moves.length}! Here's your path: /r/n/r/n"
		moves.each { |move| puts move }
	end

end