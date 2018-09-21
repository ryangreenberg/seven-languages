#!/usr/bin/env ruby

# Do:
#
# Modify the CSV application to support an each method to return a CsvRow
# object. Use method_missing on that CsvRow to return the value for the column
# for a given heading.
#
# For example, for the file:
#
#     one, two
#     lions, tigers
#
# allow an API that works like this:
#
#     csv = RubyCsv.new
#     csv.each {|row| puts row.one}
#
# This should print "lions".

module ActsAsCsv
  def self.included(base)
    base.extend ClassMethods
  end

  module ClassMethods
    def acts_as_csv
      include InstanceMethods
    end
  end

  module InstanceMethods
    def read
      @csv_contents = []
      filename = self.class.to_s.downcase + '.txt'
      file = File.new(filename)
      @headers = file.gets.chomp.split(', ')
      file.each do |row|
        @csv_contents << row.chomp.split(', ')
      end
    end

    attr_accessor :headers, :csv_contents

    def initialize
      read
    end
  end
end

class RubyCsv
  include ActsAsCsv
  acts_as_csv

  def each

  end
end

# Small tweak so script can be run from any directory
Dir.chdir(__dir__) do
  m = RubyCsv.new
  puts m.headers.inspect
  puts m.csv_contents.inspect

  csv = RubyCsv.new
  csv.each {|row| puts row.one}
end
