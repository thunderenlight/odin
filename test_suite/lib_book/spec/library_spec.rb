require 'spec_helper'


	describe Library do 
		before :all do 
			lib_obj = [
				Book.new({title: "Javascript: The Good Parts", author: "Douglas Crockford", category: :development}),
				Book.new({title: "Designing with Web Standards", author: "Jeffrey Zeldman", category: :design}),
				Book.new({title: "Don't Make me Think", author: "Steve Krug", category: :usability}),
        Book.new({title: "JavaScript Patterns", author: "Stoyan Stefanov", category: :development}),
        Book.new({title: "Responsive Web Design", author: "Ethan Marcotte", category: :design})
        ]

	        File.open "books.yml", "w" do |f|
	        	f.write YAML::dump lib_obj
	        end
		end
		before :each do 
			@lib = Library.new("books.yml")
		end


		describe '#new' do 
			context 'initializes with no parameters' do  
				it 'has no books' do 
					lib = Library.new
					lib.books.length.should == 0
				end
			end
			context 'initializes with a YAML file' do
				it 'has 5 books' do 
					@lib.books.length.should == 5
				end
			end
		end

		it 'returns all the in a given category' do 
			@lib.get_books_in_category(:development).length.should == 2
		end

		it 'accepts new books' do 
			@lib.add_book( Book.new({title: "Designing for the Web", author: "Mark Boulton", category: :design}))
    	@lib.get_book("Designing for the Web").should be_an_instance_of Book
    end

    it 'saves the library' do 
    	books = @lib.books.map { |book| book.title}
    	@lib.save 
    	lib2 = Library.new("books.yml") 
    	books2 = lib2.books.map { |book| book.title}
    	books.should eql books2 
    end
  end

