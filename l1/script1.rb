#3

results = [10, 2, 5, 12, 11, 11, 4]
index = 1
puts "Количество очков в каждой партии"
puts "==============================\n\r"
  for sum in results
  puts "Партия: #{index} / Выпало очков: #{sum}"
  index += 1
end

#4

longest_lang = nil
array = ["Ruby", "Pyth*9on", "Java", ".NET", "HTML", "JavaScript"]
array.each {|x| longest_lang = x.length;
if longest_lang < x.length;
  longest_lang = nil;
end }
puts "Самая большая строка #{longest_lang}"

#5

hash = array.inject(Hash.new{}) {|long, word| long[word] = word.length; long}
puts hash

