def random_number
  rand(0..100)
end
random_number
puts "guess a number btw 0 and 100"
user_guess = gets.chomp.to_i
