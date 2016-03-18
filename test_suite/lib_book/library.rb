require_relative 'book'
require 'yaml'

class Library

	attr_accessor :books

	def initialize(lib_file = false)
		@lib_file = lib_file
		@books = lib_file ? YAML::load(File.read(@lib_file)) : []
	end

	def get_books_in_category(category)
		c=[]
		@books.each do |b|
			 if  b.category == category
			 	c << category
			end
		end
		c
	end

	def add_book(book)
		@books.push(book)
	end

	def get_book(title)
		@books.select do |book|
		puts book.title
		book.title == title
		end
		books[0]
	end

	def save(lib_file = false)
		@lib_file = lib_file || @lib_file || "library.yml"
		File.open(@lib_file, "w") do |f|
			f.write YAML::dump(@books)
		end
	end
end

	b = Book.new({title: "Javascript: The Good Parts", author: "Douglas Crockford", category: :development})

	lib = Library.new("books.yml")

	lib.add_book(Book.new({title: "Designing for the Web", author: "Mark Boulton", category: :design}))

puts lib.books.length
puts lib.get_book("Designing for the web")
puts lib.get_books_in_category(:development)
