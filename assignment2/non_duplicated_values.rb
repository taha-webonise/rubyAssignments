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
if ARGV.length == 0
	abort("Arguements missing. Usage: ./nonDuplicatedValues.rb value1 value2 .. valueN")
end
non_duplicate = NonDuplicatedValues.new
arr = []
for element in ARGV
	arr.push(element)
end
non_duplicate.nonDuplicatedValues(arr)