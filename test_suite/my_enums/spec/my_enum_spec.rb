require 'spec_helper'


describe '#my_each' do 
	it 'accepts a block' do 
		a = [1,2,4,5]
	expect(a.my_each{ |o| puts o }.length).to eq(4)
	end
end