puts "I'm a calculator. I can add, subtract, multiply, or divide."
puts 'Which method would you like to use? (add, sub, mul, div)'
method = gets.chomp

puts 'What is the first number? (The number on the left!)'
num1 = gets.chomp

puts 'Ok, got it. What is the second number?'
num2 = gets.chomp

case method
when 'add'
  puts "Cool, let's do some addition! Your answer is: "
  puts num1.to_f + num2.to_f
when 'sub'
  puts 'Awesome, I love subtraction! Your answer is: '
  puts num1.to_f - num2.to_f
when 'mul'
  puts 'Great! I adore multiplication! Your answer is: '
  puts num1.to_f * num2.to_f
when 'div'
  puts 'Exciting! Division has always floated my boat! Your answer is: '
  puts num1.to_f / num2.to_f
else
  puts "Oh no! Please enter 'add', 'sub', 'mul', or 'div'!"
end
