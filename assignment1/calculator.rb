#!/usr/bin/env ruby

class Calculator
	def initialize(operand1, operator, operand2)
		if operator == "+"
			result = operand1 + operand2
		elsif operator == "-"
			result = operand1 - operand2
		elsif operator == "*"
			result = operand1 * operand2
		elsif operator == "/"
			result = operand1 / operand2
		else
			result = "Arguements Missing: Usage ./calculator.rb operand1  + | - | * | /  operand2"
		end
		print "Result of the expression is #{result}\n"
	end
end

operand1 = Integer(ARGV[0])
operand2 = Integer(ARGV[2])
operator = ARGV[1]
c = Calculator.new(operand1, operator, operand2)