#!/usr/bin/env ruby

input = ARGV[0]

# Regular expression to match "School" at the end of the string
regex = /School$/

# Use scan and join to apply the regex and print the result
puts input.scan(regex).join
