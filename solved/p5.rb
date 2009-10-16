End = 20
iteration = 1
n = End


def evenly_divisible?(n)
	(11..20).all? { |i|
		n % i == 0
	}
end

start = Time.now

until evenly_divisible?(n)
	n = End * iteration
	iteration = iteration + 1
end

finish = Time.now
time_taken = (finish - start).to_s


puts '*********************************'
puts "Took #{time_taken} seconds"
puts '*********************************'
puts n
