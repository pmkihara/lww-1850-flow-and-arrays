# frozen_string_literal: true

# LIVECODE - INLINE CONDITIONALS

# Pedir um número ao usuário
puts 'Choose a number'
print '> '

# Guardar a resposta em uma variável
number = gets.chomp.to_i

# Printar a mensagem se o número for par
if number.even?
  puts "Your number #{number} is even!"
end

# TODO: Refatorar o código usando inline conditionals
