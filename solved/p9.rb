# a^2 + b^2 = c^2
# a + b + c = 1000
# ab is divisible by 12
# abc is divisble by 60

n = 1000
a = (1..n / 2).to_a.find { |a|
  (n * (n / 2 - a) % (n - a)).zero?
}
b = n * (n / 2 - a) / (n - a)
puts "Product is #{a * b * (n - a - b)}."
