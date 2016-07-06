number = (1..100).to_a.shuffle.pop
tries = 0

puts 'Guess a number between 1 and 100'
player_guess = gets.chomp
tries += 1

def guess(number, player_guess, tries)
  if player_guess.to_i == number.to_i
    puts "You got it! The number was #{number}! You got it in #{tries} tries!"
  elsif player_guess.to_i > 100
    puts 'Oops! Guess must be between 1 and 100. Please guess again.'
    player_guess = gets.chomp
    tries += 1
    guess(number, player_guess, tries)
  elsif player_guess.to_i < 1
    puts 'Oops! Guess must be between 1 and 100. Please guess again.'
    player_guess = gets.chomp
    tries += 1
    guess(number, player_guess, tries)
  else
    if player_guess.to_i > number.to_i
      puts "The number is lower than #{player_guess}. Please guess again."
      player_guess = gets.chomp
      tries += 1
      guess(number, player_guess, tries)
    elsif player_guess.to_i < number
      puts "The number is higher than #{player_guess}. Please guess again."
      player_guess = gets.chomp
      tries += 1
      guess(number, player_guess, tries)
    end
  end
end

guess(number, player_guess, tries)
