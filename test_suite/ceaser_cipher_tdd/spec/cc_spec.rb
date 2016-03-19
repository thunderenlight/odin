
require 'spec_helper'

describe "#caeser_cipher" do 
	it 'takes 2 arguments' do 
		expect(caesar_cipher("What a string!",5)).to be_truthy
	end

	it 'returns a string' do 
		expect(caesar_cipher("What a string!",5)).class == String
	end

	xit 'returns a non letter unencrpyted' do 
		expect(caesar_cipher("!", 4)).to be("!")
	end
end

describe "#capital?" do 
	it "returns true for a capital" do
		expect(capital?("Z".ord)).to be_truthy		
	end

	it "returns false for a non capital letter" do 
		expect(capital?("x".ord)).to be_falsey
	end
end