def random_number
   rand(1..100)
end

=begin
another way to get a random number...
number = (0..100).to_a
number.shuffle.first
puts number
=end

def dup_input(array, user_guess)
  if user_guess == 0
    puts "numbers only"
  elsif
    !array.include?(user_guess)
    array << user_guess
  else #array.include?user_guess
    puts "that's the same guess n00b"
  end
end

array = []
num = random_number
finished = "you're done here"
puts num
guess_prompt = "guess a number between 1 and 100"
(1..5).each do |b|
  if b == 1
    puts guess_prompt
  end
  user_guess = gets.chomp.to_i
  if b == 5 && user_guess != num
    puts "better luck next time, that's 5 tries"
    break
  end
  dup_input(array, user_guess)
  if user_guess == num
    puts "that's right" + " " + finished
    break
  elsif user_guess < num
    puts "you're too low " + guess_prompt
  elsif user_guess > num
    puts "you're too high " + guess_prompt
  end
  puts "array: " + "#{array}"
end
