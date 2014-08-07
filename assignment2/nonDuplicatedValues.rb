#!/usr/bin/env ruby

class NonDuplicatedValues
	def nonDuplicatedValues(arr)
		@arr = arr
		temp_array = []
		for element in @arr
			if @arr.count(element) > 1
				temp_array.push(element)
			end
		end
		@arr -= temp_array
		print "#{@arr}"+"\n"
	end
end

non_duplicate = NonDuplicatedValues.new
arr = []
for element in ARGV
	arr.push(element)
end
non_duplicate.nonDuplicatedValues(arr)