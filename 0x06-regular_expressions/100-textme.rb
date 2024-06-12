#!/usr/bin/env ruby

input = ARGV[0]

# Regular expression to extract sender, receiver, and flags
regex = /\[from:(?<sender>.*?)\] \[to:(?<receiver>.*?)\] \[flags:(?<flags>.*?)\]/

# Match the regex against the input
match_data = input.match(regex)

if match_data
  sender = match_data[:sender]
  receiver = match_data[:receiver]
  flags = match_data[:flags]

  # Print the formatted output
  puts "#{sender},#{receiver},#{flags}"
else
  puts "No match found"
end
