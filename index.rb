#料理注文サービス
require "./food"
require "./drink"
require "date"

puts "名前を入力してください"
name = gets.chomp
puts "#{name}さん、いらっしゃいませ"
puts "メニューはこちらです"

food1 = Food.new(name: "ピザ", price: 800,calorie:700)
food2 = Food.new(name: "すし", price: 1000,calorie:600)
drink1 = Drink.new(name:"コーラ",price:300,amount:400)
drink2 = Drink.new(name:"お茶",price:200,amount:500)

menus = [food1,food2,drink1,drink2]

index = 0
menus.each do |menu|
  puts "#{index}.#{menu.info}"
  index += 1
end

puts "-----------"
puts "メニュー番号を選択してください"

order = gets.chomp.to_i
selected_menu = menus[order]

puts "選択されたメニュー：#{selected_menu.name}"
puts "個数を入力してください（３つ以上で１００円引き）"

count = gets.chomp.to_i
puts "お会計は#{selected_menu.get_total_price(count)}円です"

