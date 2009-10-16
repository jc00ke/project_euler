#http://www.rubyquiz.com/quiz57.html
#http://amicable.homepage.dk/knwnc2.htm

class Integer
	def calc_divisors
		res=[1]
		2.upto(Math.sqrt(self).floor) do |i|
			if self % i == 0
				res << i
			end
		end
		res.reverse.each do |i|
			res << self / i
		end
		res = res.uniq
		res.delete_at(-1) # removes last divisor, which is n itself
		res
	end
end

class Array
	def sum
		inject(0) do |result, i|
			result + i
		end
	end
	
	def non_uniq
		h = Hash.new(0)
		self.each do |i|
			h[i] = h[i] + 1
		end
		h.delete_if {|k,v| v == 1}
		h.to_a
	end
end

def amicable? (h,a,b)
	(a != b) && ((a == h[b]) && (h[a] == b))
end

h = Hash.new
Max = 10_000
sum = 0
(1...Max).each do |i|
	h[i] = i.calc_divisors.sum
	sum = sum + i + h[i] if amicable?(h,i,h[i])
	#puts i.to_s + ': ' + h[i].to_s if amicable?(h,i,h[i])
end

puts sum







