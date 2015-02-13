#!/usr/bin/env ruby

# Obtain file contents
file_content = ARGV[0]

# Place file content in file variable
file = File.open(file_content, "r")

# Read file contents and place it inside variable
content = file.read

# Place strings in array one element per line
dna_strings = content.split(/\r?\n/)

dna_string =  dna_strings[0]
dna_substring =  dna_strings[1]

indexes = Array.new
j = dna_string.index(dna_substring, 0)

while j != nil
  indexes << j+1 if j != nil
  j = dna_string.index( dna_substring, j+1 )
end

indexes.each { |x| print x.to_s + " " }
puts "\n"
