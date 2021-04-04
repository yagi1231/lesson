
def win
puts "あっちむいて、、"
puts "[0]下\n[1]上\n[2]右\n[3]左"
puts "0〜3を選んでください"

player_choice = gets.chomp.to_i
computer_choice = rand(4)

arounds = ["上","下","右","左"]

puts "あなた：#{arounds[player_choice]}、相手:#{arounds[computer_choice]}"

if player_choice == computer_choice
    puts "あなたの勝ち"
    return false
else
    puts "あいこ"
    janken 
 
    
  
end
end

def lose
puts "あっちむいて、、"
puts "[0]下\n[1]上\n[2]右\n[3]左"
puts "0〜3を選んでください"
player_choice = gets.chomp.to_i
computer_choice = rand(4)

arounds = ["上","下","右","左"]

puts "あなた：#{arounds[player_choice]}、相手:#{arounds[computer_choice]}"

if player_choice == computer_choice
    puts "あなたの負け"
    return false
else
    puts "あいこ"
   janken 
    
  
end
end


puts "最初はグー"

def janken

puts "ジャンケン、、"
puts "[0]グー\n[1]パー\n[2]チョキ"
puts "0〜2を選んでください"
 
player_hand = gets.chomp.to_i
computer_hand = rand(3)

jankens = ["グー","パー","チョキ"]
puts "あなたの手:#{jankens[player_hand]}、相手の手:#{jankens[computer_hand]}"
if player_hand >=3
    puts "エラー。0,1,2から選んでください"
    return true
elsif player_hand == computer_hand
    puts"あいこ"
    return true
elsif player_hand==0 && computer_hand== 2 || player_hand==1 && computer_hand==0 || player_hand==2 && computer_hand==1
    puts "あなたの勝ち"
    win
 　　return false
 　2
else 
    puts "あなたの負け"
    lose
   return false
end
end
 

next_game = true

while next_game
    next_game=janken
end





