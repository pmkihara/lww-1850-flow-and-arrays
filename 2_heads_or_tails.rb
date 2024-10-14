# frozen_string_literal: true

# LIVECODE - CARA OU COROA

# Criar uma moeda com valor randômico cara ou coroa
coin = %w[heads tails].sample
# Pedir uma escolha ao usuário
puts 'Pick heads or tails'
print '> '

# Pegar a resposta do usuário e guardar em uma variável
choice = gets.chomp

result = if choice == coin
           # Se o usuário acertar, returnar o valor "win"
           'win'
         else
           # Se o usuário não acertar, returnar o valor "lose"
           'lose'
         end

# Printar o resultado
puts "The coin was #{coin}. You #{result}!"

# TODO: Refatorar o código usando ternário
