#!/usr/bin/env ruby

class RubyOccurances
	def occurances(string1)
		print "Number of 'RUBY' in string1 are #{string1.scan(/RUBY/).count}\n\n"
		index = 0
		while true
			index = string1.index(/RUBY/, index)
			break if index == nil
			print "Ruby occured at index #{index}\n"
			index += 4
		end
	end
end

string1 = "RUBY parses a file by looking for <br/> one of the special tags that tells it to start interpreting the text as RUBY code. The parser then executes all of the code it finds until it runs into a RUBY closing <br/> tag."
string2 = "RUBY does not require (or support) explicit type definition in variable declaration; a variable's type is determined by the context in which the variable is used."

occ = RubyOccurances.new
occ.occurances(string1)