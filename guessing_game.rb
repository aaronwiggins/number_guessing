def random_number
  rand(0..100)
end

num = random_number
puts num
puts "guess a number btw 0 and 100"
user_guess = gets.chomp.to_i
  if user_guess == num
    puts "you got it"
  else
    puts "keep guessing"
  end
