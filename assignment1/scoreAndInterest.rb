#!/usr/bin/env ruby

$LOAD_PATH << "."
require "arithmeticCalculations"

class Score
	include Arithmetic
	def initialize(mark1, mark2, mark3, mark4, mark5)
		@mark1 = mark1
		@mark2 = mark2
		@mark3 = mark3
		@mark4 = mark4
		@mark5 = mark5
	end
	def score
		Arithmetic.score(@mark1, @mark2, @mark3, @mark4, @mark5)
	end
end

class Interest
	include Arithmetic
	def initialize(principle, rate, time)
		@p = principle
		@r = rate
		@t = time
	end
	def interest
		Arithmetic.interest(@p, @r, @t)
	end
end

if ARGV[0] == "score"
	print "Enter first subject's marks:"
	mark1 = Integer($stdin.gets.chomp)
	print "Enter second subject's marks:"
	mark2 = Integer($stdin.gets.chomp)
	print "Enter third subject's marks:"
	mark3 = Integer($stdin.gets.chomp)
	print "Enter foth subject's marks:"
	mark4 = Integer($stdin.gets.chomp)
	print "Enter fifth subject's marks:"
	mark5 = Integer($stdin.gets.chomp)
	s = Score.new(mark1, mark2, mark3, mark4, mark5)
	s.score
elsif ARGV[0] == "interest"
	print "Enter principle:"
	principle = Integer($stdin.gets.chomp)
	print "Enter rate:"
	rate = Integer($stdin.gets.chomp)
	print "Enter time:"
	time = Integer($stdin.gets.chomp)
	i = Interest.new(principle, rate, time)
	i.interest
else
	print "Arguements missing. Usage: ./scoreAndInterest.rb score | interest \n"
end