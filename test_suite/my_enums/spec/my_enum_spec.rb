require 'spec_helper'


describe '#my_each' do 
	it 'accepts a block' do 
		a = [1,2,4,5]
	expect(a.my_each{ |o| puts o }.length).to eq(4)
	end
end

describe '#my_select' do 
	it 'returns a block item if in collection ' do 
		a = [1,2,4,5]
	expect(a.my_select { |o| o = 2 }).to eq [2]
	end

	it 'returns an empty if not in collection ' do 
		a = [1,2,4,5]
	expect(a.my_select { |o| o = 3 }).to eq []
	end
end