#First & Last

f = "First"
l = "Last"

# Concatenation
# What code can you write to output the string "FirstLast"?
puts f + l

# What code can you write to output the string "LastFirst"?
puts l + f

# What code can you write to output the string "First Last"?
puts f + " " + l

# What code can you write output the string "Last First Last First"
puts l + " " + f + " " + l + " " + f

# Interpolation
# What code can you write to output the string "FirstLast"?
puts "#{f}#{l}"

# What code can you write to output the string "LastFirst"?
puts "#{l}#{f}"

# What code can you write to output the string "First Last"?
puts "#{f} #{l}"

# What code can you write output the string "Last First Last First"
puts "#{l} #{f} #{l} #{f}"

#Names

name_1 = "Megan Smith"
name_2 = "Todd Park"

# Can you come up with two ways to output just the fragment "Megan" from name_1 ?
puts name_1.delete " Smith"
puts name_1.tr('Smith', '')

# Would either of your techniques from A would work to output "Todd" from name_2? Why or why not?
# Both techniques could be used to output "Todd".
puts name_2.delete " Park"
puts name_2.tr('Park', '')

# Write code that can output the initials of name_2.
names = name_2.split
# 0 is the offset in the string that I am trimming, 1 is how many characters to show.
first_initial = names.first[0,1]
last_initial = names.last[0,1]
puts "#{first_initial}.#{last_initial}."

# Just Integers

a = 12
b = 65
c = 31
d = 98

# Write code to find the average of these four numbers.
puts (a + b + c + d) / 4.0

# Find the average yourself using paper or a calculator. Is your answer different than you found in A? Why?
# My answer was initially diffenent because my code only included integers.
# I made the diviser a float so the answer would also be a float.

# Say you have the operation a + b * c / d. What result do you get out from Ruby?
# What other outputs can you get out by adding one or more pairs of parentheses
# to the equation?

puts a + b * c / d
# The order of operations would evaluat b * c first, the product of that would then
# be divided by d.  The product of that would be added to a.  This results in a total
# sum integer of 32.

#other possible outcomes
puts (a + b) * (c / d.to_f)
puts (a + b) * c / d
puts a + b * (c / d)

# Strings and Integers

# Write code to output both the total characters in all the names together
# and the average length of the names.

a = "Ezra"
b = "Ada"
c = "Yukihiro"
d = "Grace"

total_characters = a.length + b.length + c.length + d.length
average_characters = total_characters / 4
puts "The total characters of these names is #{total_characters} and the names have an average length of #{average_characters}."

# Say you have an age variable that holds the person's age. Write code to output the appropriate greeting.

puts "How old are you?"
age = gets.chomp.to_i
puts "Happy" * age + "Birthday!"

# There's a silly compression algorithm that outputs the first letter, the number of letters in the middle,
# and the last letter. So for the string "Kalamazoo" it'd output "K7o" or "Denver" would be "D4r". Can you write code to implement that?

puts "What word would you like to encrypt?"
word = gets.chomp.to_s

first_character = word[0]
second_character = word[1...-1].length
third_character = word[-1]

puts "Then encrypted version of this word is #{first_character}#{second_character}#{third_character}."