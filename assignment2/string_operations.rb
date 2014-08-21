#!/usr/bin/env ruby

class String
	def cut_string(string1)
		chopped_a = string1.scan(/.{#{string1.length/4}}/)
		for part in chopped_a 
			print "#{part}\n"
		end
	end
	def divide_and_reverse(string1)
		splitted = string1.split(".")
		for sentences in splitted
			sentence = sentences.split(" ")
			print "#{sentence.reverse}\n\n"
		end
	end
	def find_length(string1, string2)
		print "Length of string1 is: #{string1.length}\n"
		print "Length of string2 is: #{string2.length}\n"
	end
	def remove_html(string1)
		string1.delete!("<")
		string1.delete!(">")
		string1.delete!("br")
		string1.delete!("/")
		print "After deleting html tags: #{string1}"
	end
end
string1 = "RUBY parses a file by looking for <br/> one of the special tags that tells it to start interpreting the text as RUBY code. The parser then executes all of the code it finds until it runs into a RUBY closing <br/> tag."
string2 = "RUBY does not require (or support) explicit type definition in variable declaration; a variable's type is determined by the context in which the variable is used."

str = String.new
str.cut_string(string1)
str.divide_and_reverse(string1)
str.find_length(string1, string2)
str.remove_html(string1)