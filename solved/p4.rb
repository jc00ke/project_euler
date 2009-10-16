
#A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.

#Find the largest palindrome made from the product of two 3-digit numbers.


palindromes = []

(1..999).each do |i|
	(1..999).each do |j|
		k = i*j
		palindromes << k if k.to_s == k.to_s.reverse
	end
end

puts palindromes.sort.reverse[0]
