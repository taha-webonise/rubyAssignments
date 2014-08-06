module Arithmetic
	def Arithmetic.score(mark1, mark2, mark3, mark4, mark5)
		total = mark1 + mark2 + mark3 + mark4 + mark5
		percentage = total / 5
		print "Percentage is #{percentage}"+"\n"
	end
	def Arithmetic.interest(p, r, t)
		interest = p * r * t / 100
		print "Simple interest is #{interest}"+"\n"
	end
end