require 'pry'

class Book
  attr_accessor :title, :author, :price

  def initialize(title, author, price)
    @title = title
    @author = author
    @price = price
  end

  def details
    "# Book Name :- '#{title}' \n# Author :- #{author} \n# Price :- #{price}"
  end
end

begin
  print "Enter the book title: "
  title = gets.chomp.strip
  raise "Title cannot be empty" if title.empty?

  print "Enter the author name: "
  author = gets.chomp.strip
  raise "Author cannot be empty" if author.empty?

  print "Enter the price of 1 copy: "
  price_input = gets.chomp.strip
  raise "Price cannot be empty" if price_input.empty?
  price = Integer(price_input)
rescue ArgumentError
  puts "Price must be a valid integer."
  retry
rescue => e
  puts "Error: #{e.message}. Please try again."
  retry
end

book = Book.new(title, author, price)

puts "\nBook details:"
puts book.details

binding.pry
