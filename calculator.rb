puts "Enter done when you've added all the numbers you need."
puts "This might not work so well with 0. Just a warning."

numbers = []

user_input = nil
while user_input != 'done'
print "What number do you want to include? > "
  user_input = gets.chomp
  numbers.push(user_input.to_f)
end
  print "Would you like to add (1), subtract (2), multiply (3), or divide (4) these numbers? > "
  operation = gets.to_i

  if operation == 1
    puts "The sum is #{numbers.reject(&:zero?).reduce(:+)}"
  elsif operation == 2
    puts "The remainder is #{numbers.reject(&:zero?).reduce(:-)}"
  elsif operation == 3
    puts "The product is #{numbers.reject(&:zero?).inject(:*)}"
  elsif operation == 4
    puts "The quotient is #{numbers.reject(&:zero?).inject(:/)}"
  else
    puts "That is not an option, sorry."
end
