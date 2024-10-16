# frozen_string_literal: true

# LIVECODE - VER SE A LE WAGON ESTÁ ABERTA

# Perguntar a hora para o usuário
puts 'What time (hour) is it?'
print '> '

# Pegar a resposta e guardar numa variável
hour = gets.chomp.to_i

# A wagon está aberta:
# De manhã - das 9hs às 12hs
# De tarde - das 13hs às 18hs
morning = hour >= 9 && hour < 12
afternoon = hour >= 13 && hour < 18

if morning || afternoon
  puts 'LW is open. Time to code!'
else
  puts 'LW is close. It\'s flashcard time!'
end

# TODO: Alterar as variáveis morning e afternoon de acordo com a variável hour
# TODO2: Alterar o if de acordo com as variáveis morning e afternoon
