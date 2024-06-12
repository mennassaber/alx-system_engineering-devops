#!/usr/bin/env ruby

input = ARGV[0]

# Regular expression to match sequences of 'd' repeated 1 to 3 times
regex = /d{1,3}/

# Use scan and join to apply the regex and print the result
puts input.scan(regex).join
