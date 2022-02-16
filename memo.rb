require "csv"
puts "1(新規でメモを作成) 2(既存のメモ編集する)"
memo_type = gets.to_i
if memo_type == 1
    puts "拡張子を除いたファイル名を入力してください"
    filename = gets.chomp
    puts "内容を入力してください"
    puts "完了したら、Ctrl + Dで保存"
    memo = STDIN.read
    CSV.open("#{filename}.csv","w") do |csv|
    csv.puts ["#{memo}"]
    end    
elsif memo_type == 2
    puts "拡張子を除いたファイル名を入力してください"
    filename = gets.chomp
    puts "内容を入力してください"
    puts "完了したら、Ctrl + Dで保存"
    memo = STDIN.read
    CSV.open("#{filename}.csv","a") do |csv|
    csv.puts ["#{memo}"]
    end
else
    puts "1か2を入力してください"
end