# frozen_string_literal: true

# Part 1

def sum(arr)
  # YOUR CODE HERE
  sum = 0
  arr.each{|a| sum += a}
  sum
end

def max_2_sum(arr)
  # YOUR CODE HERE
  arr.sort!
  arr[-1].to_i+arr[-2].to_i # works because nil to integer conversion exists
end

def sum_to_n?(arr, number)
  # YOUR CODE HERE
  s = Set[]
  arr.each{|a| if s.include?(number-a) then return true end; s.add(a)}
  return false
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  "Hello, "+name.to_s
end

def starts_with_consonant?(string)
  # YOUR CODE HERE
  valid_alphabet = string.match?(/\A[A-Za-z]/)
  valid_alphabet and not string.match?(/\A[AEIOUaeiou]/)
end

def binary_multiple_of_4?(string)
  # YOUR CODE HERE
  string.match?(/(\A[01]*1+00\z)|(\A0+\z)/)
end

# Part 3

# Object representing a book
class BookInStock
  # YOUR CODE HERE

  # constructor
  def initialize(isbn,price)
    @isbn = ''
    @price = 0.0
    self.isbn=isbn
    self.price=price
  end

  # getter for isbn instance variable
  def isbn
    @isbn
  end

  # setter for isbn instance variable
  def isbn=(isbn)
    if not isbn.kind_of? String then raise ArgumentError.new('expected ESBN to be a string') end 
    if isbn == '' then raise ArgumentError.new("ISBN must be non-empty") end
    @isbn = isbn
  end

  # getter for price instance variable
  def price
    @price
  end

  # setter for price instance variable
  def price=(price)
    if not price.kind_of? Integer and not price.kind_of? Float then raise ArgumentError.new('expected price to be a float or int') end
    if price <= 0.0 then raise ArgumentError.new("price must be than zero") end
    @price = price
  end

  def price_as_string
    "$#{'%.2f' % @price}"
  end
  
end