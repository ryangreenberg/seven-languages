#!/usr/bin/env ruby

# Write a simple grep that will print the lines of a file having any occurrences
# of a phrase anywhere in that line. You will need to do a simple regular
# expression match and read lines from a file. (This is surprisingly simple in
# Ruby.) If you want, include line numbers.

USAGE = "#{$PROGRAM_NAME} <pattern> <file>"

pattern = ARGV[0]
abort USAGE unless pattern

file = ARGV[1] ? File.open(ARGV[1], 'r') : STDIN

regex = Regexp.new(pattern)

file.each.with_index do |line, idx|
  match_data = line.match(regex)
  if match_data
    start_idx, end_idx  = match_data.offset(0)
    length = end_idx - start_idx

    prefix = "#{idx}: "
    puts "#{prefix}#{line}"
    print " " * (prefix.size + start_idx)
    puts '~' * length
  end
end

# Demo
#
# $ echo "hello world\nthis is 123\nmy last\nresort 4\n8675309" | ruby ruby/grep.rb '[0-9]+'
# 1: this is 123
#            ~~~
# 3: resort 4
#           ~
# 4: 8675309
#    ~~~~~~~
