puts 'How can I help you today? (deposit, withdraw, check_balance)'
action = gets.chomp

balance = 2000

def deposit(balance, amount)
  balance += amount.to_f
  puts "Thank you for your deposit! Your new balance is: #{balance}."
end

def withdraw(balance, amount)
  balance -= amount.to_f
  puts "Thank you for your withdrawal! Your new balance is: #{balance}."
end

def check_balance(balance)
  puts "Your current balance is: #{balance}."
end

case action
when 'deposit'
  puts 'How much would you like to deposit?'
  amount = gets.chomp.to_f
  deposit(balance, amount)
when 'withdraw'
  puts 'How much would you like to withdraw?'
  amount = gets.chomp.to_f
  withdraw(balance, amount)
when 'check_balance'
  check_balance(balance)
else
  puts "My only valid commands are 'deposit', 'withdraw', or 'check_balance'."
end
