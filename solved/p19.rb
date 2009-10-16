require 'date'
require 'date/format'

count = 0
(1901..2000).each do |year|
	(1..12).each do |month|
		count = count + 1 if (Date.civil(year, month, 1)).wday.zero?
	end
end
puts count.to_s
