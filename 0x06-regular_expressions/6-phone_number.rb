#!/usr/bin/env ruby

input = ARGV[0]

# Regular expression to match a 10-digit phone number
regex = /\A\d{10}\z/

# Use scan and join to apply the regex and print the result
puts input.scan(regex).join
