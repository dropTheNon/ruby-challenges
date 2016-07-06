puts "Enter a word or phrase you'd like reversed:"

string = gets.chomp
i = string.length - 1

puts "\n*******\n\n"

puts "Your reversed string is: \n\n"

while i >= 0
  print string[i]
  i -= 1
end

puts "\n\n*******\n\n"

puts 'Thank you for using this converter'
