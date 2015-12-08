#Bradley Trowbridge
#COP 3834C-01 Web Application Development
#Ruby2

puts "Please enter a number"

num = gets
sum = 0
num.split("").each do |i|
	sum = sum + i.to_i
end

puts "The sum of the digits is: " + sum.to_s