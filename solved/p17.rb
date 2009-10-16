

class Integer
	
	def parse_number_to_words
	
		single = %w[zero one two three four five six seven eight nine ten]
		teens = %w[ten eleven twelve thirteen fourteen fifteen sixteen seventeen eighteen nineteen]
		double = %w[zero ten twenty thirty forty fifty sixty seventy eighty ninety]
	
		return "one thousand" if self.eql?(1000)
		word = ''
		digits = self.digits
		case digits.size
			when 3 then
				word.concat(single[digits[0]] + ' hundred ')
				if digits[1] == 1 then
					word.concat('and ' + teens[digits[2]] + ' ')
				elsif digits[1] == 0 && digits[2] == 0 then
					word.concat('zero')
				else
					word.concat('and ' + double[digits[1]] + '-' + single[digits[2]] + ' ')
				end
			when 2 then
				if digits[0] == 1 then
					word.concat(teens[digits[1]] + ' ')
				else
					word.concat(double[digits[0]] + '-' + single[digits[1]] + ' ')
				end
			when 1 then
				word.concat(single[digits[0]] + ' ')	
		end
		word.gsub(/-zero/, '').gsub(/zero/, '')
	end
	
	def get_word
		
	end
	
	def digits
		s = self.to_s
		digits = []
		0.upto(s.length - 1) { |c| digits << s[c,1].to_i }
		digits	
	end

end

puts '*************************'

summed = ''

(1..1000).each do |i|
	summed << i.parse_number_to_words
end

#puts summed
puts '*************************'
#summed.gsub(/-/,'').gsub(/ /, '')
puts '*************************'
puts summed.gsub(/-/,'').gsub(/ /, '').length
