=begin
        循环，times,while,each,for,until,loop
=end

#times 方法
=begin
循环次数.times do
  循环的处理
end
循环的次数.times {
  循环的处理
}
=end
5.times do
  puts "hello"
end
5.times { |i|
  puts "for #{i}'s loop"
}


# for 语句
=begin
for 变量 in 对象 do
  循环的处理
end
=end
sum = 0
for i in 1 .. 5
  sum = sum + i
end
puts sum

names = ["awk", "perl", "python", "ruby"]
for name in names
  puts name
end

#while 语句
=begin
while 条件 do
end
=end
i = 1
while i < 3
  puts i
  i += 1
end

sum = 0
i = 1
while i <= 5
  sum += i
  i += 1
end
puts sum

#until 语句
=begin
until 条件 do
  循环的处理
end
=end

sum = 0
i = 1
until sum >= 50
  sum += i
  i += 1
end
puts sum

#each 方法,将对象集合里的对象逐个取出
=begin
对象.each do |变量|
  循环的处理
end
对象.each {|变量|
  循环的处理
}
=end

names = ["awk", "perl"]
