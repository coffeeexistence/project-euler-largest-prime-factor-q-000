# Enter your procedural solution here!
require 'prime'

def next_prime(start)
  i = start + 2
  until Prime.prime?(i) do
    i += 2
  end
  i
end


def largest_prime_factor(number)
  primes = [2, 3]
  until Prime.prime?(number) do
    divisor = primes.find {|p| number % p == 0}
    if divisor
      number = number/divisor
      # puts "Divided down to #{number} by factor #{divisor}"
    else
      new_prime = next_prime(primes[-1])
      primes << new_prime
      # puts "Had to get a new prime, #{new_prime}"
    end
  end
  number
end

# n = Time.now
# puts largest_prime_factor(6008514)
# puts "This operation took #{(Time.now - n)} seconds"
