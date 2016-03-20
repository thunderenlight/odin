

class ConnectFour

	def initialize(width, height)
		@width = width
		@height = height 
		@board = Array.new(width) {Array.new(height){ " "}}

	end

	def display
		 @board.map.with_index do |row, i|
		 	row.each_with_index do |col, i|
		 		if row[i] == col[i]
		 			print "\n"
		 		else
		 			
		 			print "[x]"
		 		end
		 	end
		 end
	end

end
# col
# [_][_][_][_][_][_][_]row
# [_][_][_][_][_][_][_]
# [_][_][_][_][_][_][_]
# [_][_][_][_][_][_][_]
# [_][_][_][_][_][_][_]
# [_][_][_][_][_][_][_]

g= ConnectFour.new(6,7)
g.display