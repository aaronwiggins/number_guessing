def random_number
  rand(0..100)
end
puts random_number.to_i
puts "guess a number btw 0 and 100"
user_guess = gets.chomp.to_i
  if user_guess == random_number
    puts "you got it"
  else
    puts "keep guessing"
  end
