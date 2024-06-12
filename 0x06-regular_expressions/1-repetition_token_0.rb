#!/usr/bin/env ruby

input = ARGV[0]

# Regular expression to match 'aaa' as a sequence
regex = /a{3}/

# Use scan and join to apply the regex and print the result
puts input.scan(regex).join
