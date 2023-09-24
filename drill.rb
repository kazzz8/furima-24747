def register_data(data)
  puts '名前を入力してください'
  name = gets.chomp

  puts 'パンチ力を入力してください(0 ~ 100)'
  punch = input_judgment

  puts 'キック力を入力してください(0 ~ 100)'
  kik = input_judgment

  puts 'ジャンプ力を入力してください(0 ~ 100)'
  jump = input_judgment

  status = {name: name, punch: punch, kik: kik, jump:jump}
  data << status
end

def input_judgment
  value = gets.to_i
  while value > 100 do
    puts "100以下の数字を入力してください"
    value = gets.to_i
  end
  return value
end

def show_data_list(data)
  puts '見たい人の番号を選択してください'
  index = 1
  data.each do |list|
    puts "#{index}:#{list[:name]}"
    index += 1
  end
end

data = []

while true
  puts '選択してください'
  puts '[0]登録する'
  puts '[1]データを確認する'
  puts '[2]終了する'
  input = gets.to_i

  if input == 0
    register_data(data)
  elsif input == 1
    show_data_list(data)
  elsif input == 2
    exit
  else
    puts '無効な値です'
  end
end