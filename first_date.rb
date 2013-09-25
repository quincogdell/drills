#in class drill w01_d03_092513
puts 'How old are you?'
age = gets.chomp!
puts 'Do you plan on having children?'
puts 'y/n'
children = gets.chomp!

if children == 'y'
    puts 'What child names do you like?'
    names = gets.chomp!
end

if age.to_i > 30
  puts 'Are you married?'
  puts 'y/n'
  married = gets.chomp!
  if married == 'n'
    puts 'Do you ever plan on getting married?'
    puts 'y/n'
    married_plan = gets.chomp!
    else
        puts "You should buy your spouse a present!"
    end
else
  puts 'You are still young and have plenty of time to get married!'
end

puts 'Goodbye!'