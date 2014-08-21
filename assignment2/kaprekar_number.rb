#!/usr/bin/env ruby

class KaprekarNumber
	def kaprekar_number(number)
		square = number ** 2
		square_string = square.to_s
		# sum of last n and first n or n-1 digits
		sum_of_digits = square_string.slice(0,square_string.length/2).to_i + square_string.slice(square_string.length/2, square_string.length).to_i
		if sum_of_digits == number
			print "#{number} is a Kaprekar Number\n"
		else
			print "#{number} is not a Kaprekar Number\n"
		end
	end
end

print "Please enter the number: "
num = Integer($stdin.gets.chomp)
kap_num = KaprekarNumber.new
kap_num.kaprekar_number(num)