def janken_hoi

puts "じゃんけん・・・"
puts "0(グー)1(チョキ)2(パー)3(戦わない)"

jankens = ["グー","チョキ","パー"]

my = gets.to_i
# 数字の入力
my_hand = jankens[my]
# 入力した数字と配列の順番を合わせる
pliers = rand(3)
pliers_hand = jankens[pliers]

#じゃんけんを始める準備
if  my  < 3
  puts "ホイ！"
elsif my == 3
    puts "戦わない"
    exit
else
    puts "正しい数字を入力してください"
    return true
end

#配列の何番目を入力したか出力
puts "______________________________"
puts "あなた：#{my_hand}を出しました"
puts "相手：#{pliers_hand}を出しました"
puts "______________________________"

  
# じゃんけんの勝敗をグローバル変数を用いて実装
$result = my - pliers

  if $result == 0
  puts "あいこ"
  return true
  elsif $result == -1 || $result == 2
    # 入力する数字からプレイヤーの数字を引いて結果を出す
    puts "勝ち"
    return false 
  else $result == 1 || $result == -2
    # プレイヤーの数字から入力する数字を引いて結果を出す
    puts "負け"
    return false
  end
  
end 
    

def acchi_hoi

puts "あっち向いて〜"
puts "0(上)1(下)2(右)3(左)"

hoi = ["上","下","左","右"]

my = gets.to_i
my_eye = hoi[my]
pliers = rand(4)
pliers_eye = hoi[pliers]

puts "ホイ！"
puts "______________________________"
puts "あなた：#{my_eye}"
puts "相手：#{pliers_eye}"
puts "______________________________"

#じゃんけんの結果とあっちむてほいの結果を比べる
  if my_eye == pliers_eye && ( $result == -1 || $result == 2 )
  puts "あなたの勝ちです！"
  return false
  elsif my_eye == pliers_eye && ($result == -2 || $result == 1)
  puts "あなたの負けです！"
  return false
  else 
    puts "もう１度"
    return true
  end

end


  def loop_game
  
  # trueの場合に処理をループさせる条件
  # janken_hoiとacchi_hoiで実装したreturn trueをここで呼び出す
    if janken_hoi == true
      return true
    elsif 
      acchi_hoi == true
      return true
    else 
      return false
    end

  end

#loop_gameで実装した条件を用いて処理をループさせる
next_game = true

while next_game 
  next_game = loop_game
end


