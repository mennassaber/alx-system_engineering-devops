#!/usr/bin/env ruby

input = ARGV[0]

# Regular expression to match 'h', any single character, and 'n' at the end
regex = /h.n$/

# Use scan and join to apply the regex and print the result
puts input.scan(regex).join
