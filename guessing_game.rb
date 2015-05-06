def random_number
   rand(0..100)
end

=begin
another way to get a random number...
number = (0..100).to_a
number.shuffle.first
puts number
=end

def dup_input(array, user_guess)
  if !array.include?(user_guess)
    array << user_guess
  else #array.include?user_guess
    puts "that's the same guess"
  end
end

array = []
num = random_number
finished = "you're done here"
puts num
(1..5).each do |b|
  puts "guess a number btw 0 and 100"
  user_guess = gets.chomp.to_i
  dup_input(array, user_guess)
  if user_guess == num
    puts "that's right" + " " + finished
    break
  elsif user_guess < num
    puts "you're too low"
  elsif user_guess > num
    puts "you're too high"
  end
  puts "array: " + "#{array}"
end


#if inputs twice in a row are <, put you're guessing low a lot
#if inputs twice in a row are >, put you're guessing high a lot
