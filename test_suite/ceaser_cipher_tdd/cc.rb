
def caesar_cipher(string, move)
	encrypted_string = []
	result = []
	# string.each_char do |l|
	# 	n = l.ord
	# 	if letter?(n)
	# 	encrypted_string << n + move
	# 	else
	# 	encrypted_string << n
	# 	end
	# end
	# encrypted_string.each do |n|
	# 	if capital?(n)
	# 		result << (n + 32).chr
	# 	elsif letter?(n) == false 
	# 		result << n
	# 	else			
	# 	result << n.chr
	# 	end
	# end
	# result.join(" ").gsub("@", " ")
	string.each_char do |l|

		if !letter?(l.ord) 
			encrypted_string << l.ord
		elsif capital?(l.ord)
			encrypted_string << l.ord + move - 26
		else
			encrypted_string << l.ord + move 
		end

	end
		p encrypted_string
		encrypted_string.each do |n|
			result << n.chr 
		end
		result.join("  ")
end

def capital?(n)
	n < 95
end
def letter?(n)
	 (n >= 65 && n <= 90) || (n >= 97 && n <= 122)
end
 
def capitalize!(n, move)
	if capital?(n)
		move = 65
	else
		move = 95
	end
end
p caesar_cipher("What a string!!", 5)