#!/usr/bin/env ruby

class Array
	def create_array(string1)
		@arr = string1.split(" ")
	end
	def print_recursive(index)
		unless @arr[index] == nil
			print "#{@arr[index]}\n"
			print_recursive(index+1)
		end
	end
end

string1 = "RUBY parses a file by looking for <br/> one of the special tags that tells it to start interpreting the text as RUBY code. The parser then executes all of the code it finds until it runs into a RUBY closing <br/> tag."
string2 = "RUBY does not require (or support) explicit type definition in variable declaration; a variable's type is determined by the context in which the variable is used."

arr = Array.new
arr.create_array(string1)
arr.print_recursive(0)