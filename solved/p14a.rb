

def generate_chain(num)
  chain = [num]
  until chain[-1] == 1
    num = get_next_in_chain(num)
    chain.push(num)
  end
  chain
end
 
def get_next_in_chain(num)
  num % 2 == 0 ? num/2 : 3*num + 1
end

max_num    = 0
max_length = 0
 

start = Time.now


1.upto(999_999) do |num|
  chain = generate_chain(num)
  if max_length < chain.length
    max_num = num
    max_length = chain.length
  end
end
 

finish = Time.now
time_taken = (finish - start).to_s


puts '*********************************'
puts "Took #{time_taken} seconds"
puts '*********************************'


