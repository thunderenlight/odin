require 'spec_helper'

describe ConnectFour do 

	before (:each) do 
		@game = ConnectFour.new(7,6)
	end

	describe '#new' do 
		it 'takes two arg' do
			@game.should be_an_instance_of ConnectFour
		end
	end

	describe '#display' do
		it 'prints out the board' do 
			@game.display.length.should == 7
		end
	end

end