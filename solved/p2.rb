
def fib(n)
	seq = [1]
	(1...n).each do |i|
		seq[i] = seq[i-1] + seq[i-2]
	end
	seq
end

def get_max
	max = 0
	(1..1000).each do |i|
		if fib(i)[i-1] > 1_000_000 then
			max = i-1
			break
		end
	end
	max
end

a = 0

fib(get_max).each do |s|
	a  = a + s if s % 2 == 0
end

puts a
