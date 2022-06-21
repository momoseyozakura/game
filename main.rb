#あっち向いてホイ
def game2
  directions = ["上","下","左","右"]
  
  puts "あっち向いて..."
  puts "0(上)1(下)2(左)3(右)"
  my_direction = gets.chomp.to_i
  enemy_direction = rand(3)
  
  if my_direction == 0 || my_direction == 1 || my_direction == 2 || my_direction == 3
    puts "ホイ！"
    puts "----------------------"
    puts "あなた:#{directions[my_direction]}"
    puts "相手：#{directions[enemy_direction]}"
    puts "----------------------"
    if ($result == "win") && (my_direction == enemy_direction)
      puts "win"
      return false
      
    elsif ($result == "lose") && (my_direction == enemy_direction)
      puts "lose"
      return false
      
    elsif my_direction != enemy_direction
      return true
    end
  else
    puts "0~3の数字のみを入力してください"
    puts "-----------------------"
    game2
  end
end
#ジャンケン
def game1
  hands = ["グー","チョキ","パー"]
  
  puts "じゃんけん..."
  puts "0(グー)1(チョキ)2(パー)3(戦わない)"
   player = gets.chomp.to_i
   enemy = rand(3)


  if player == 0 || player == 1 || player == 2
    puts "ホイ！"
    puts "----------------------"
    puts "あなた:#{hands[player]}を出しました"
    puts "相手：#{hands[enemy]}を出しました"
    puts "----------------------"
    
    #勝ち
    if (player == 0 && enemy == 1) || (player == 1 && enemy == 2) || (player == 2 && enemy == 0)
      $result = "win"
      return false
    #負け
    elsif (player == 0 && enemy == 2) || (player == 1 && enemy == 0) || (player == 2 && enemy == 1)
      $result = "lose"
      return false
    #あいこ
    elsif player == enemy
      puts "あいこで..."
      return true
    end
  elsif player == 3
    puts "終了"
    exit
  else
    puts "0~3の数字のみを入力してください"
    puts "------------------------"
    game1
  end
end

def main
  if game1 == true
    return true
  elsif game2 == true
    return true
  else
    return false
  end
end

re_game = true
while re_game
  re_game = main
end