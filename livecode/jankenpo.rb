# frozen_string_literal: true

def print_state_of_game(user, computer, result, user_score, computer_score)
  puts "You chose #{user}, the computer chose #{computer}. You #{result}!"
  # (Opcional2): mostrar o score do jogo
  puts "Your score: #{user_score} | Computer score: #{computer_score}"
  # Printar uma divisória para separar as jogadas
  puts '--------'
end

# TODO: jogo de pedra-papel-tesoura
# Guardar as mãos válidas em uma array (para facilitar na hora de usar)
hands = %w[rock paper scissors]

# Inicializar a mão do usuário para usar no loop
user = nil

# (Opcional2): continuar jogando até um dos jogadores chegar a 3 pontos
# Criar uma variável com a pontuação do usuário e outra com a pontuação do computador
# que começa em 0 pontos
user_score = 0
computer_score = 0

# (Opcional): continuar jogando até o usuário pedir para sair
until user == 'exit' || user_score == 3 || computer_score == 3
  # Pegar uma mão randômica para o computador (uma mão nova para cada jogada)
  computer = hands.sample

  # Mostrar as opções para o usuário e pedir para escolher uma mão
  # Verificar se a opção escolhida é válida. Se não for válida, pedir a opção
  # novamente até o usuário escolher uma opção válida.
  while user != 'rock' && user != 'paper' && user != 'scissors' && user != 'exit'
    puts "Choose an option: #{hands.join(' | ')} or exit"
    print '> '
    user = gets.chomp
  end

  # (Opcional): Sair do loop quando o jogador escolher sair
  break if user == 'exit'

  # Comparar as mãos:
  # Empate quando a mão do usuário e a mão do computador forem iguais
  if computer == user
    print_state_of_game(user, computer, 'draw', user_score, computer_score)
  else
    # Usuário ganha quando:
    case user
      # Escolhe PEDRA e o computador escolhe TESOURA
    when 'rock' then user_wins = computer == 'scissors'
      # Escolhe TESOURA e o computador escolhe PAPEL
    when 'scissors' then user_wins = computer == 'paper'
      # Escolhe PAPEL e o computador escolhe PEDRA
    when 'paper' then user_wins = computer == 'rock'
    end

    # (Opcional 2): Incrementar o score dependendo do resultado
    user_wins ? user_score += 1 : computer_score += 1

    # Printar as mãos e o resultado final
    print_state_of_game(user, computer, user_wins ? 'win' : 'lose', user_score, computer_score)
  end

  # resetar a mão do usuário para a próxima jogada
  user = nil
end
