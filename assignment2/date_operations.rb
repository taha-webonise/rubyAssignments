#!/usr/bin/env ruby

class Date
	def current
		print "Current date: #{Time.now.strftime("%d-%m-%Y")}\n"
	end
	def print_selected_date
		print "Selected date: #{Time.new(2012, 1, 12).strftime("%d-%B-%Y")}\n"
	end
	def next_week
		next_week = Time.now + (60 * 60 * 24 * 7 * 1)
		print "Next Week: #{next_week.strftime("%d-%m-%Y")}\n"
	end
	def diff_dates(date1, date2)
		print "#{(date2 - date1).to_i / (60 * 60 * 24)} days difference\n"
	end
	def few_days_later(days)
		future = Time.now + (60 * 60 * 24 * days)
		print "#{days} later: #{future.strftime("%d-%m-%Y")}\n"
	end
	def date_to_array
		print "Date and Time in array format: #{Time.now.to_a}\n"
	end
end

d = Date.new
d.current
d.print_selected_date
d.next_week
date1 = Time.new(2010, 4, 12)
date2 = Time.new(2011, 5, 5)
d.diff_dates(date1, date2)
d.few_days_later(20)
d.date_to_array