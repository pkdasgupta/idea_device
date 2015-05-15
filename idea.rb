#!/usr/bin/env ruby

=begin
Below Program takes a filename as input over command-line, 
Typical file as /etc/passwd and computes the sum of the values from the third field separated by ':'.

Usage : ./idea.rb /etc/passwd
=end

file = ARGV[0]
@sum = 0

puts "\n\n File Name : #{file}"
puts "\n\n Sample Contents : \n #{`tail #{file}`}"

puts "\n Calculating Sum of values from Third Field : "

IO.foreach("#{file}") { |line|
  print "#{line.split(':')[2].to_i} + "
  @sum = @sum + line.split(':')[2].to_i
}

print " = #{@sum} \n\n"
