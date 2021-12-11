#!/usr/bin/env ruby

require 'optparse'
require 'date'

params = ARGV.getopts("", "y:#{Date.today.year}", "m:#{Date.today.month}")
year = params["y"].to_i
month = params["m"].to_i
puts "#{month}月 #{year}".center(20)

puts "日 月 火 水 木 金 土"
first_day = Date.new(year, month, 1)
last_day = Date.new(year, month, -1)

first_day.wday.times do
  print "   "
end
(first_day..last_day).each do |date|
  if  date.saturday?
    print date.day.to_s.rjust(2) + "\n"
  else
    print date.day.to_s.rjust(2) + " "
  end
end
puts "\n"
