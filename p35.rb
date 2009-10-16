#The number, 197, is called a circular prime because all rotations of the digits: 197, 971, and 719, are themselves prime.

#There are thirteen such primes below 100: 2, 3, 5, 7, 11, 13, 17, 31, 37, 71, 73, 79, and 97.

#How many circular primes are there below one million?

#http://www.absorbeo.net/2008/01/18/project-euler-problem-3/

require 'benchmark'

def sieve(n)
  l = Array.new(n, 1) 
  store = Array.new

  for i in 2 .. n
    next unless l[i]
    (i**2).step(n, i) {|x| l[x] = nil }
    store << i
  end

  store
end



class Array
  def rotate!
     self.unshift(self.pop)
     #return self[0]
  end
end
    
#puts %w[1 2 3 4 5 6 7 8 9].rotate!
    
#"123456789".each_byte do |c|
	#puts c
#end

#sieve(1_000_000).each do |i|
#end

#Benchmark.bm do |x|
#    x.report { p determine }
#end









