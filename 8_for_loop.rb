# frozen_string_literal: true

# Printar os números de 1 a 3 usando for..in com array = [1, 2, 3]
for number in [1, 2, 3]
  puts "The number now is #{number}"
end

# TODO: Fazer a mesma coisa com range
for number in 1..3
  puts "The number now is #{number}"
end

# TODO: Fazer a mesma coisa usando o while
number = 1
while number <= 3
  puts "The number now is #{number}"
  number += 1
end
