# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  total = 0
  for elem in arr
    total += elem
  end
  return total
end

def max_2_sum arr
  if arr.length == 0
    return 0
  end
  if arr.length == 1
    return arr[0]
  end
  if arr.length == 2
    return arr[0] + arr[1]
  end
  if arr[0] > arr[1]
    max1 = arr[0]
    max2 =  arr[1]
  else
    max1 = arr[1]
    max2 = arr[0]
  end
  for i in 2...arr.length
    if arr[i] > max1
      max2 = max1
      max1 = arr[i]
    end
    if arr[i] > max2
      max2 = arr[i]
    end
  end
  return max1 + max2
end

def sum_to_n? arr, n
  if arr.length == 0
    return false
  end
  for i in 0...arr.length
    for j in 0...arr.length
      if (i == j)
        next
      end
      if (arr[i]+arr[j]) == n
        return true
      end
    end
  end
  return false
end

# Part 2

def hello(name)
  return "Hello, " + name
end

def starts_with_consonant? s
  if s.length == 0
    return false
  end
  consonants  = ['b', 'c', 'd', 'f', 'g', 'h', 'j', 'k', 'l', 'm', 'n', 'p', 'q', 'r', 's', 't', 'v', 'w', 'x', 'y', 'z']
  if consonants.include? s[0].downcase
    return true
  end
  return false
end

def binary_multiple_of_4? s
  if (s.delete(" ") == "")
    return false
  end
  if (s.delete(" ").count("01") != s.delete(" ").length)
    return false
  end
  if (s.delete(" ").to_i(base=2) % 4 == 0)
    return true
  end
  return false
end

# Part 3

class BookInStock
  def initialize(isbn, price)
    if isbn == "" or price <= 0
      raise ArgumentError
    end
    @isbn = isbn
    @price = price
  end
  #getters
  def isbn
    @isbn
  end
  def price
    @price
  end
  #setters
  def isbn=(isbn)
    @isbn=isbn
  end
  def price=(price)
    @price=price
  end
  def price_as_string
    return "$" + sprintf("%.2f", @price)
  end
end
