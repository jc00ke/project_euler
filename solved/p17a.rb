require "rubygems"
require "linguistics"
Linguistics::use(:en)
 
puts ((1 .. 1000).map { |n| n.en.numwords}).join.gsub(/ |-/, "").length
