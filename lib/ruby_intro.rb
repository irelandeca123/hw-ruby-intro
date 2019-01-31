# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  arr.sum
end

def max_2_sum arr
  # YOUR CODE HERE
  sum(arr.sort.last(2))
end

def sum_to_n? arr, n
  # YOUR CODE HERE
	arr.length < 2 ? false :
	 (arr.combination(2).find{|x,y| x + y == n } ? true : false)
end

# Part 2

def hello(name)
  # YOUR CODE HERE
   var = "Hello, " + name
   return var 
end

def starts_with_consonant? s
  # YOUR CODE HERE
  /^[b-df-hj-np-tv-z]/i.match(s) != nil
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  return true if s == "0"
	/^[10]*00$/.match(s) != nil
end

# Part 3

class BookInStock
# YOUR CODE HERE
  attr_reader   :isbn
  attr_accessor :price

  def isbn=(isbn)
    @isbn = isbn
  end

  def price=(price)
    @price = price
  end

  def initialize(isbn, price)
    raise(ArgumentError, "ISBN should not be empty") if isbn==''
    raise ArgumentError.new("Price should not be empty")  if price == ''
    @isbn = isbn
    @price = Float(price)
    raise ArgumentError.new("Price has to be bigger than 0") if price <= 0
  end

  def price_as_string
    return sprintf("$%2.2f", price)
  end


end
