class Player
  def hand
    puts "数字を入力してください"
    puts "0:グー, 1:チョキ, 2:パー"
    while true
      input_hand = gets.chomp
      if input_hand == '0' || input_hand == '1' || input_hand == '2'
        input_hand = input_hand.to_i
        return input_hand
      else
        puts "0〜2の数字を入力してください"
        puts "0:グー, 1:チョキ, 2:パー"
      end
    end
  end
end

class Enemy
  def hand
    enemy_hand = rand(3)
    return enemy_hand
  end
end

class Janken
  def pon(player_hand, enemy_hand)
    janken = ["グー", "チョキ", "パー"]
    puts "相手の手は#{janken[enemy_hand]}です"
    if player_hand == enemy_hand
      puts "あいこ"
      return true
    elsif (player_hand == 0 && enemy_hand == 1) || (player_hand == 1 && enemy_hand == 2) || (player_hand == 2 && enemy_hand == 0)
      puts 'あなたの勝ちです'
      return false
    else
      puts 'あなたの負けです'
      return false
    end
  end
end

player = Player.new
enemy = Enemy.new
janken = Janken.new

next_game = true
while next_game
  next_game = janken.pon(player.hand, enemy.hand)
end
