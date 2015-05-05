def random_number
   rand(0..100)
end

def dup_input(array, user_guess)
  if !array.include?(user_guess)
    array << user_guess
  else #array.include?user_guess
    puts "that's the same guess"
  end
end

array = []
num = random_number
puts num
(1..5).each do |b|
  puts "guess a number btw 0 and 100"
  user_guess = gets.chomp.to_i
  dup_input(array, user_guess)
  p "this is an array: " + "#{array}"
  if user_guess == num
    puts "that's right"
    break
  elsif user_guess < num
    puts "you're too low"
  elsif user_guess > num
    puts "you're too high"
  end
end
