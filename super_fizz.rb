# First try to implement the algorithm in the clearest way you can.

range = (1..1000).to_a

range.each do |x|
  if x % 3 == 0 && x % 5 == 0 && x % 7 == 0
    puts "SuperFizzBuzz"
  elsif x % 3 == 0 && x % 7 == 0
    puts "SuperFizz"
  elsif x % 5 == 0 && x % 7 == 0
    puts "SuperBuzz"
  elsif x % 3 == 0 && x % 5 == 0
    puts "FizzBuzz"
  elsif x % 3 == 0
    puts "Fizz"
  elsif x % 5 == 0
    puts "Buzz"
  elsif x % 7 == 0
    puts "Super"
  else
    puts x
  end
end


=begin
Not Finished

iterate every number from a range of 1 to 1000 |integer|
    for each use modulo for 3, 5, 7
    assign each remainder to a seperate variable
    if 3 remainder is 0
      print "Fizz""
    if 5 remainder is 0
      print "Buzz""
    if 7 remainder is 0
      print "Super"
    else print integer
    
=end

=begin
doesn't work


range = (1..10).to_a

range.each do |integer|
  remainder_count = 0

  if integer % 7 == 0
    print "Super"
  else
    remainder_count += 1
  end
  if integer % 3 == 0
    print "Fizz"
  else
    remainder_count += 1
  end
  if integer % 5 == 0
    print "Buzz"
  else
    remainder_count += 1
  end
  if remainder_count == 3
    print integer
  end
end

=end

