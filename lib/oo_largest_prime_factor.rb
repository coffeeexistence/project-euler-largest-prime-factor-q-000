# Enter your object-oriented solution here!

require 'prime'

class LargestPrimeFactor
  attr_accessor :value

  def initialize(value)
    self.value = value
  end

  def next_prime(start)
    i = start + 2
    until Prime.prime?(i) do
      i += 2
    end
    i
  end

  def number
    number = self.value
    primes = [2, 3]
    until Prime.prime?(number) do
      divisor = primes.find {|p| number % p == 0}
      if divisor
        number = number/divisor
        # puts "Divided down to #{number} by factor #{divisor}"
      else
        new_prime = self.next_prime(primes[-1])
        primes << new_prime
        # puts "Had to get a new prime, #{new_prime}"
      end
    end
    number
  end

end
