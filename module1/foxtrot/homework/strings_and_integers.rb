# git repo: https://github.com/turingschool/challenges/blob/master/working_with_strings_and_integers.markdown

# 1. First & Last
#
# If you have the strings "First" and "Last" in the following variables:
#
  f = "First"                # => "First"
  l = "Last"                 # => "Last"
# Use only the "string concatenation" technique to complete the following:
#
# What code can you write to output the string "FirstLast"?
  f + l                      # => "FirstLast"
  "#{f}#{l}"                 # => "FirstLast"
# What code can you write to output the string "LastFirst"?
  l + f                      # => "LastFirst"
  "#{l}#{f}"                 # => "LastFirst"
# What code can you write to output the string "First Last"?
  f + " " + l                # => "First Last"
  "#{f} #{l}"                # => "First Last"
# What code can you write to output the string "Last First Last First"?
  ((l + ' ' + f) + ' ') * 2  # => "Last First Last First "
  "#{l} #{f} #{l} #{f}"      # => "Last First Last First"
# Then repeat A-E using only the "string interpolation" technique.

# 2. Names
#
# Start with this string:
#
  name_1 = "Megan Smith"                    # => "Megan Smith"
  name_2 = "Todd Park"                      # => "Todd Park"
# A. Can you come up with two ways to output just the fragment "Megan" from name_1?
  name_1[0..4]                              # => "Megan"
  name_1.split.first                        # => "Megan"
# B. Would either of your techniques from A would work to output "Todd" from name_2? Why or why not?
# Yes, the split option would work for todd because it splits on the space.
# the index position option would not work because the names aren't the same length.
# C. Write code that can output the initials of name_2.
  name_2.split.map { |word| word[0] }.join  # => "TP"

# Just Integers
#
# Start with these numbers:
#
  a = 12               # => 12
  b = 65               # => 65
  c = 31               # => 31
  d = 98               # => 98
# Write code to find the average of these four numbers.
  (a + b + c + d) / 4  # => 51

  numbers = [a , b, c, d]             # => [12, 65, 31, 98]
  numbers.reduce(:+) / numbers.count  # => 51
# Find the average yourself using paper or a calculator. Is your answer different than you found in A? Why?
# yes. 51.5. because here we are using integers instead of floats here.
# Say you have the operation a + b * c / d. What result do you get out from Ruby? What other outputs can you get out by adding one or more pairs of parentheses to the equation?
  a + b * c / d                       # => 32
  (a + b) * (c / d)                   # => 0
  (a + b * c) / d                     # => 20

# Strings & Integers
#
# People
#
# Say we have these people:
#
  a = "Ezra"      # => "Ezra"
  b = "Ada"       # => "Ada"
  c = "Yukihiro"  # => "Yukihiro"
  d = "Grace"     # => "Grace"
# Write code to output both the total characters in all the names together and the average length of the names.

  names = [a, b, c, d]                  # => ["Ezra", "Ada", "Yukihiro", "Grace"]
  total = names.map(&:size).reduce(:+)  # => 20
  total / names.count                   # => 5

  name_count = (a + b + c + d).size  # => 20
  name_count / 4                     # => 5

# Happy Birthday
#
# In our family we like to say "Happy" once for every year of your age when we say "Happy birthday!". So when you turn four we'd say "Happy happy happy happy birthday!" Note the capitalization.
#
# Say you have an age variable that holds the person's age. Write code to output the appropriate greeting.

  def happy_birthday(age)
    'Happy ' + ('happy ' * age) + 'birthday!'  # => "Happy happy happy happy happy happy birthday!"
  end
  happy_birthday(5)                            # => "Happy happy happy happy happy happy birthday!"

  age = 10                                   # => 10
  'Happy ' + ('happy ' * age) + 'birthday!'  # => "Happy happy happy happy happy happy happy happy happy happy happy birthday!"

# String Compression
#
# There's a silly compression algorithm that outputs the first letter, the number of letters in the middle, and the last letter. So for the string "Kalamazoo" it'd output "K7o" or "Denver" would be "D4r". Can you write code to implement that?

  def compress(word)
    "#{word[0]}#{word[1..-2].size}#{word[-1]}"  # => "D4r"
  end
  compress('Denver')                            # => "D4r"

  word = "Crawford"                           # => "Crawford"
  "#{word[0]}#{word[1..-2].size}#{word[-1]}"  # => "C6d"
