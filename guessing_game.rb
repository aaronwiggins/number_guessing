 def random_number
   rand(0..100)
 end

 num = random_number
 array = []
 puts num
 (1..5).each do |b|
   puts "guess a number btw 0 and 100"
   user_guess = gets.chomp.to_i
   array << user_guess
   p array
   if user_guess == num
     puts "that's right"
     break
   elsif user_guess < num
     puts "you're too low"
   elsif user_guess > num
     puts "you're too high"
   end
 end
