#!/usr/bin/env ruby

input = ARGV[0]

# Regular expression to match sequences of 'c' exactly 2 times
regex = /c{2}/

# Use scan and join to apply the regex and print the result
puts input.scan(regex).join
