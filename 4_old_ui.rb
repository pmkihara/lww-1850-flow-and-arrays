# frozen_string_literal: true

# LIVECODE - OLD UI USANDO CASE WHEN

# Perguntar qual a ação
puts 'Which action? [read|write|exit]'
print '> '

# Pegar a resposta e guardar numa variável
action = gets.chomp

# Printar o modo escolhido pelo usuário ou se a ação não existir
# if action == 'read'
#   puts 'You chose READ. You lurker.'
# elsif action == 'write'
#   puts 'You chose WRITE. You spammer.'
# elsif action == 'exit'
#   puts 'Goodbye, you quitter.'
# else
#   puts 'Go back to school, you illiterate.'
# end

# TODO: Refatorar o código usando case when
case action
when 'read' then puts 'You chose READ. You lurker.'
when 'write' then puts 'You chose WRITE. You spammer.'
when 'exit' then puts 'Goodbye, you quitter.'
else puts 'Go back to school, you illiterate.'
end
