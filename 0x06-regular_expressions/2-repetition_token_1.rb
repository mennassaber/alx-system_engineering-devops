#!/usr/bin/env ruby

input = ARGV[0]

# Regular expression to match sequences of 'b' (1 or more times)
regex = /b+/

# Use scan and join to apply the regex and print the result
puts input.scan(regex).join
