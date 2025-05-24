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

print "Enter the book title: "
title = gets.chomp

print "Enter the author name: "
author = gets.chomp

print "Enter the price of 1 copy: "
price = gets.chomp.to_i

book = Book.new(title, author, price)

puts "\nBook details:"
puts book.details
