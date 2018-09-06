#!/usr/bin/env ruby

puts <<~'EOS'
Find:

- Find out how to access files with and without code blocks. What is the benefit
of the code block?

    File.open(path) {|f| f << 'contents' }

This implements the loan pattern
(called context managers or 'with' in other languages) so the file is
guaranteed to be closed after the block is executed.

By using a block you still get all the operations on the the file object
itself. If you only need to write a file:

    File.write(path, contents)

- How would you translate a hash to an array? Can you translate arrays to
hashes?

Hash to array:

    {'name' => 'Doug', 'age' => 11}.to_a

Array to Hash:
- .to_h method was introduced in Ruby 2.1
- You can also use the class method Hash[] to create a Hash from an array of tuples.

- Can you iterate through a hash?

Yes, using a block:

    {:a => 1, :b => 2}.each {|k, v| p "key: #{k}, value: #{v}" }

- You can use Ruby arrays as stacks. What other common data structures do arrays
support?

Queues, tuples, matrixes.

EOS


puts <<~EOS
From "Day 1 Self-Study"

Do:
- Print the contents of an array of sixteen numbers, four numbers at a time, using just each. Now, do the same with each_slice in Enumerable.
- The Tree class was interesting, but it did not allow you to specify a new tree with a clean user interface. Let the initializer accept a nested structure of hashes. You should be able to specify a tree like this: {’grandpa’ => { ’dad’ => {’child 1’ => {}, ’child 2’ => {} }, ’uncle’ => {’child 3’ => {}, ’child 4’ => {} } } }.
- Write a simple grep that will print the lines of a file having any occurrences of a phrase anywhere in that line. You will need to do a simple regular expression match and read lines from a file. (This is surprisingly simple in Ruby.) If you want, include line numbers.
EOS

puts "- Print the contents of an array of sixteen numbers, four numbers at a time, using just each. Now, do the same with each_slice in Enumerable."
arr = (0..15).to_a
row = []
arr.each do |i|
  row << i
  if row.size == 4
    puts row.join(' ')
    row = []
  end
end
puts

arr.each_slice(4) do |slice|
  puts slice.join(' ')
end
puts

puts "- The Tree class was interesting, but it did not allow you to specify a new tree with a clean user interface. Let the initializer accept a nested structure of hashes. You should be able to specify a tree like this: {’grandpa’ => { ’dad’ => {’child 1’ => {}, ’child 2’ => {} }, ’uncle’ => {’child 3’ => {}, ’child 4’ => {} } } }."

# As-is from book
class Tree
  attr_accessor :children, :node_name
  def initialize(name, children=[])
    @children = children
    @node_name = name
  end

  def visit_all(&block)
    visit &block
    children.each {|c| c.visit_all &block}
  end

  def visit(&block)
    block.call self
  end
end

# Improved constructor interface
class Tree2
  attr_accessor :children, :node_name
  def initialize(name, hsh = {})
    @children = hsh.map {|name, children| Tree2.new(name, children) }
    @node_name = name
  end

  def visit_all(&block)
    visit &block
    children.each {|c| c.visit_all &block}
  end

  def visit(&block)
    block.call self
  end
end


tree = Tree2.new('family', {'grandpa' => { 'dad' => {'child 1' => {}, 'child 2' => {} }, 'uncle' => {'child 3' => {}, 'child 4' => {} } } })
tree.visit_all {|node| puts node.node_name }
