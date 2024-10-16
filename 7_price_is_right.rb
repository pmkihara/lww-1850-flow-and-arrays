# frozen_string_literal: true

# LIVECODE - DESCOBRIR O PREÇO

# Pegar um valor randômico entre 1 e 5, que será o preço secreto
price = rand(1..5)
p price

# Perguntar um chute ao usuário
puts 'Guess the price ($1 to $5)'
print '> '

# Pegar a resposta e guardar em uma variável
guess = gets.chomp.to_i

# TODO: fazer um loop com while
# Enquanto o usuário não acertar o preço:
# - Perguntar novamente
# - Pegar a nova tentativa e atualizar a variável
while guess != price
  puts 'Guess the price ($1 to $5)'
  print '> '
  guess = gets.chomp.to_i
end

# Avisar que o usuário ganhou quando acertar o preço
puts "The price was #{price}, you won!"

# TODO: Refatorar o código usando until
# until guess == price
#   puts 'Guess the price ($1 to $5)'
#   print '> '
#   guess = gets.chomp.to_i
# end
