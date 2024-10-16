# frozen_string_literal: true

# TODO: criar um método #acronymize que recebe uma sentença e retorna uma string
# com as iniciais de cada palavra em maiúscula

# criar uma array com todas as palavras
# criar uma array para guardar as letras
# selecionar as primeiras letras de cada palavra e adicionar na array
# juntar as letras em uma string
# colocar a string em maiúscula
def acronymize(sentence)
  # words = sentence.split
  # chars = []
  # words.each do |word|
  #   chars << word[0].upcase
  # end
  # chars.join
  sentence.split.map { |word| word[0].upcase }.join
end

puts acronymize('') == ''
puts acronymize('AWAY FROM KEYBOARD') == 'AFK'
puts acronymize('what the fluff') == 'WTF'
