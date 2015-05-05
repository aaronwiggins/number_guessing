def random_number
  rand(0..100)
end

num = random_number
puts num
(1..5).each do |b|
  puts "guess a number btw 0 and 100"
  user_guess = gets.chomp.to_i
  if user_guess == num
    puts "you got it"
  elsif user_guess > num
    puts "you're too high"
  elsif user_guess < num
    puts "you're too low"
  # else
  #   puts "keep guessing"
  end
end
