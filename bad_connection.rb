ready_to_quit = false
goodbye = false


puts "HELLO THIS IS A GROCERY STORE, WHAT CAN I HELP YOU WITH?"

until ready_to_quit == true
  user_input = gets.chomp

  if user_input.empty? == true
    puts "HELLO?!!!"
  elsif (user_input.include? "GOODBYE") && (goodbye == false)
    puts "ANYTHING ELSE I CAN HELP YOU WITH?"
    goodbye = true
  elsif (user_input.include? "GOODBYE") && (goodbye == true)
    ready_to_quit = true
  elsif user_input == user_input.upcase
    puts "NO, THIS IS NOT A PET STORE"
  elsif user_input != user_input.upcase
    puts "I AM HAVING A HARD TIME HEARING YOU."
  end
end

puts "THANK YOU FOR CALLING!"