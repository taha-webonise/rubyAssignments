#!/usr/bin/env ruby

class StringComp
	def initialize(string1, string2)
		@string1 = string1
		@string2 = string2
	end
	def compare
		if @string1 === @string2
			result = "Both Strings equal"
		else
			result = "String not equal!"
		end
		print result+"\n"
	end
end

string1 = ARGV[0]
string2 = ARGV[1]
s = StringComp.new(string1, string2)
s.compare