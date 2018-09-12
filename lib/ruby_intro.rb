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
  
  first = -(2**(0.size * 8 -2))
  second = -(2**(0.size * 8 -2))
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
  h = { 0 => true }
  arr.each { |a|
    if h[n-a]
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

end
