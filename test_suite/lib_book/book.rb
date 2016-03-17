class Book

	attr_accessor :title, :author, :category
	def initialize(opt={})
		@title = opt[:title]
		@author = opt[:author]
		@category = opt[:category]
	end

end