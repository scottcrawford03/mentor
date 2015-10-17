# git repo: https://github.com/turingschool/challenges/blob/master/super_fizz.markdown

# In this assignment you'll implement an algorithm that is actually used in some programmer interviews. And the really shocking part is that some people fail it! This is an extension of the FizzBuzz problem. Write an implementation of the following algorithm.
#
# Iterate through the numbers 0 through 1000 and for each one print out exactly one thing. These rules are in descending priority:
#
# If it's evenly divisible by 3, 5, and 7 print SuperFizzBuzz
# If it's evenly divisible by 3 and 7 print SuperFizz
# If it's evenly divisible by 5 and 7 print SuperBuzz
# If it's evenly divisible by 3, print Fizz
# If it's evenly divisible by 5, print Buzz
# If it's evenly divisible by 7, print Super
# Otherwise print just the number
# First try to implement the algorithm in the clearest way you can.
#
# Once you get that working, create a second version that uses as few instructions/lines as you can.

# clearest way

10.times do |n|
  if (n % 3) == 0 && (n % 5) == 0 && (n % 7) == 0
    puts 'SuperFizzBuzz'
  elsif (n % 3) == 0 && (n % 7) == 0
    puts 'SuperFizz'
  elsif (n % 5) == 0 && (n % 7) == 0
    puts 'SuperBuzz'
  elsif (n % 3) == 0
    puts 'Fizz'
  elsif (n % 5) == 0
    puts 'Buzz'
  elsif (n % 7) == 0
    puts 'Super'
  else
    puts n
  end
end

# lesser amount of code
 10.times do |n|
   string = ''
   string += 'Super' if n % 7 == 0
   string += 'Fizz' if n % 3 == 0
   string += 'Buzz' if n % 5 == 0
   puts string.empty? ? n : string
 end

 # or to complicate it even more.

superfizzbuzz = { 7 => 'Super', 3 => 'Fizz', 5 => 'Buzz' }
results_array = []
10.times do |n|
  superfizzbuzz.reduce('') do |string, (number, word)|
    string += word  if n % number == 0
    string.empty? ? results_array << n : results_array << string
    string
  end
end
results_array.each_slice(3) do |slice|
  puts slice.last
end
