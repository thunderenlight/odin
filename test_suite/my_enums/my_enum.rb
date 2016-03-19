class Array
	def my_each
	# take item for array length 
		i = 0
		until i == size
		yield(self[i]) 
		i += 1
		end
		self
	end
	def my_times
		d = 0
		my_each { | f | d+=1 }
		d
	end

	def my_each_with_index
		i = 0
		self.my_each { |i| yield(self, i); i+=1 }
		# yield(self[i] , i ) 
		# i += 1
		end
		self
	end

	def my_select
	end


	def my_all?
	end

	def my_any?
	end

	def my_none?
	end

	def my_count
	end

	def my_inject
	end
end
a = [1,2,4,5]
 a.my_each {|i| puts i + 1 }
puts a.my_times
