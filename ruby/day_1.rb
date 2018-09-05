#!/usr/bin/env ruby

puts <<~EOS
From "Day 1 Self-Study"

Do:
- Print the string “Hello, world.”
- For the string “Hello, Ruby,” find the index of the word “Ruby.”
- Print your name ten times.
- Print the string “This is sentence number 1,” where the number 1 changes from 1 to 10.
- Run a Ruby program from a file.
- Bonus problem: If you’re feeling the need for a little more, write a program that picks a random number. Let a player guess the number, telling the player whether the guess is too low or too high.
(Hint: rand(10) will generate a random number from 0 to 9, and gets will read a string from the keyboard that you can translate to an integer.)

EOS

puts "- Print the string “Hello, world.”"
puts "Hello, world."
puts

puts "- For the string “Hello, Ruby,” find the index of the word “Ruby.”"
def show_index(str, substr)
  idx = str.index(substr)
  if idx
    puts "'#{str}' contains #{substr} at index #{idx}."
    puts str
    print (" " * idx) + ("^" * substr.size)
  else
    puts "'#{str}' does not contain '#{substr}'"
  end
end
puts show_index("Hello, Ruby", "Ruby")
puts

puts "- Print your name ten times."
puts "Ryan " * 10
puts


puts "- Print the string “This is sentence number 1,” where the number 1 changes from 1 to 10."
(1..10).each do |i|
  puts "This is sentence number #{i}"
end
puts

puts "- Bonus problem: If you’re feeling the need for a little more, write a program that picks a random number. Let a player guess the number, telling the player whether the guess is too low or too high."
puts "I'm thinking of a number from 1 to 100. Can you guess it?"
number = rand(99) + 1
guess = nil

while guess != number
  print '> '
  guess = gets.strip.to_i

  if guess > number
    puts "That's too high!"
  elsif guess < number
    puts "Too low!"
  end
end

puts "You got it! My number is #{number}"
