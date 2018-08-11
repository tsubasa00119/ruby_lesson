#料理注文サービス
require "./menu"

puts "名前を入力してください"
name = gets.chomp
puts "#{name}さん、いらっしゃいませ"
puts "メニューはこちらです"

menu1 = Menu.new(name: "ピザ", price: 800)
menu2 = Menu.new(name: "すし", price: 1000)
menu3 = Menu.new(name: "コーラ", price: 300)
menu4 = Menu.new(name: "お茶", price: 200)

# 変数menusを定義して配列を代入してください
menus = [menu1,menu2,menu3,menu4]

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
