#break:终止程序，跳出循环
#next:跳到下一个循环,本次循环结果不做处理
#redo:在相同的条件下重复刚才的处理
i = 0
names = ["Perl","Pyhton","Ruby","Scheme"]
names.each do |x|
  i += 1
  if i == 3
    break
  end
p [i,x]
end

i = 0
names = ["Perl","Pyhton","Ruby","Scheme"]
names.each do |x|
  i += 1
  if i == 3
    next
  end
p [i,x]
end

i = 0
names = ["Perl","Pyhton","Ruby","Scheme"]
names.each do |x|
  i += 1
  if i == 3
    redo
  end
p [i,x]
end