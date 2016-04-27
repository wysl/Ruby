#迭代器
5.times { puts "Hello Woeld!"  }  #连续输出4次Hello World!

1.upto(10) { |i| puts "The count is #{i}" }   #从1数到10

10.downto(1) { |i| puts "The count is #{i}"  }    #从10到1

1.step(10, 2) { |i| puts "The count is #{i}"  }   #从1到10，步长为2

#each,使用each方法将集合内的对象逐个取出
name = ["MZD","JZM","HJT","XJP"]
name.each do |x|
  puts x
end