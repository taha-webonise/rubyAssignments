#!/usr/bin/env ruby

class SumOfCubes

	# This method calculates the sum of cubes of numbers in range as passed in arguements
	def sum_of_cubes(start, ending)
		result = 0
		# Loop from start to end of range and add cube of each number in result
		for num in start..ending
			result += num**3
		end
		print "Result is #{result} \n"
	end
end

obj = SumOfCubes.new
print "Range starts from: "
start = Integer($stdin.gets.chomp)
print "Range upto: "
ending = Integer($stdin.gets.chomp)
obj.sum_of_cubes(start,ending)