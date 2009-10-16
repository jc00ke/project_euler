
class Integer
	def calc_collatz_value
		n = self
		unless n == 1		
			n = (self.is_even?) ? self.even_collatz : self.odd_collatz
		end
		n
	end
	
	def calc_collatz
		n = self
		res = [n]
		until n == 1
			n = n.calc_collatz_value
			res << n
		end
		res
	end
	
	def is_even?
		(self % 2 == 0)
	end
	
	def even_collatz
		self / 2
	end
	
	def odd_collatz
		(3 * self) + 1
	end
end

class Array
	def sum
		inject(0) do |result, i|
			result + i
		end
	end
end

start = Time.now

Max = 1_000_000
max = 0
(1...Max).each do |i|
	size = i.calc_collatz.size
	if size > max then
		puts i.to_s + ": " + size.to_s
		max = size		
	end
end

finish = Time.now
time_taken = (finish - start).to_s


puts '*********************************'
puts "Took #{time_taken} seconds"
puts '*********************************'
puts max


