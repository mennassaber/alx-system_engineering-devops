#!/usr/bin/env ruby

input = ARGV[0]

# Regular expression to match only capital letters
regex = /[A-Z]+/

# Use scan and join to apply the regex and print the result
puts input.scan(regex).join
