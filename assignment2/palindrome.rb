#!/usr/bin/env ruby

class Palindrome
	# Funtion to find if a string is palindrome or not regardless of cases and whitespaces
	def palindrome(str)
		if str.delete(" ").casecmp(str.delete(" ").reverse) == 0
			print "String is a palindrome!\n"
		else
			print "String is not a palindrome\n"
		end
end

print "Please enter the string you want to check for palindrome: "
str = ($stdin.gets.chomp)
pal = Palindrome.new
pal.palindrome(str)