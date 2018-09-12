# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # sum = 0
  # arr.each { |a| sum += a }
  # return sum
  arr.sum
end

def max_2_sum arr
  if arr.length == 0
    return 0
  elsif arr.length == 1
    return arr[0]
  end
  
  first =  -(2**(0.size * 8 -2))
  second =  -(2**(0.size * 8 -2))
  arr.each { |a|
    if a > first
      second = first
      first = a
    elsif a > second
      second = a
    end
  }
  return first + second
end

def sum_to_n? arr, n
  if arr.length == 0
    return false
  end
  h = { 0 => false }
  arr.each { |a|
    if h[n-a] == true
      return true
    end
    h[a] = true
  }
  return false
end

# Part 2

def hello name
  return "Hello, " + name
end

def starts_with_consonant? s
  if s.empty?
    return false
  end
  return s =~ /^(?=[a-z])(?=[^aeiou])/i
end

def binary_multiple_of_4? s
  if (s.length > 0) && (s.delete('01') == '') && (s.to_i(2) % 4 == 0)
    return true
  end
  return false
end

# Part 3

class BookInStock
  def initialize bn, p
    if bn == ''
      raise ArgumentError.new('isbn cannot be empty')
    end
    if p <= 0
      raise ArgumentError.new('price cannot be equal or less than 0')
    end
    @isbn = bn
    @price = p
  end
  
  def isbn
    if @isbn == ''
      raise ArgumentError.new('isbn cannot be empty')
    end
    return @isbn
  end
  
  def isbn= bn
    @isbn = bn
  end
  
  def price
    if @price <= 0
      raise ArgumentError.new('price cannot be equal or less than 0')
    end
    return @price
  end
  
  def price= p
    @price = p
  end
  
  def price_as_string
    return '$' + "%0.2f" % @price
  end
end
