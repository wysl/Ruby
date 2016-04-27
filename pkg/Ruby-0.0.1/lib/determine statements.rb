=begin
      条件判断语句包括if语句，unless语句，case语句，
=end

#if 语句
=begin
if 条件 then
  处理1
elsif 条件2 then
  处理2
else
  处理3
end
=end
a = 10
b = 20
if a > b
  puts "a bigger than b"
elsif a < b
  puts "a smaller than b"
else
  puts "a is equal to b"
end
puts "a bigger than b" if a > b

#unless 语句，与if语句相反，条件判断为假的时执行处理
=begin
unless 条件
  处理1
else
  处理2
end
=end
a = 10
b = 20
unless a > b
  puts "a smaller/same as than b"
end

#case 语句,适用于比较的对象只有一个的时候，根据这个对象的值不同，执行不同的处理;when可以一次指定多个值
=begin
case 比较对象
when 值1 then
  处理1
when 值2 then
  处理2
when 值3 then
  处理3
else
  处理4
end
=end
tags = ["A", "IMG", "PRE"]
tags.each do |word|
  case word
  when "P", "A", "I", "B", "BLOCKQUOTE"
    puts "#{word} has child."
  when "IMG", "BR"
    puts "#{word} has child."
  else
    puts "#{word} cannoot be used"
  end
end

array = ["a", 1, nil]
array.each do |word|
  case word
  when String
    puts "the word is a String"
  when Numeric 
    puts "the word is a Numeric"
  else
    puts "other words are Something"
  end
end

text.each_line do |line|
  case line
  when /^From:/i
    puts "find a sender"
  when /^To:/i
    puts "find a receiver"
  when /^$/
    puts "resolution are finnished"
    exit
  else
    break
  end
end