#方法
def helloworld
  puts "Hello World!"
end
helloworld

#带参数的方法
def hello(name)
  puts "Hello #{name}"
end
hello("World!")
hello("Ruby")

#带可变长参数的方法
def hello(*name)
  name.each { |x| puts "Hello #{x}" }   #each迭代器将name的值传递给x
end
hello("zhao","wang","li")

def sum(*args)
  sum = 0
  args.each { |x| sum += x }
  return sum
end
p sum(1,2,3)

#定义带块的方法
def myloop
  while true
    yield     #执行块
  end
end
  num = 1
  myloop do
  puts "num is #{num}"
    break if num > 100
    num *= 2
  end

#带关键字参数的方法
def score(chinese:0,math:0,english:0)
  puts "chinese is #{chinese}"
  puts "math is #{math}"
  puts "english is #{english}"
end
score(chinese:10,math:20,english:30)

#关键字与未定义参数搭配使用的方法
def math(x:0,y:0,**args)
  [x,y,args]
end
p math(x:1,y:2,n:3,m:4)   #未定义关键字参数以散列的形式保存

#关键字参数与普通参数搭配使用的方法
def pp(z,x:0,y:0)
  [z,x,y]
end
p pp(1,x:2,y:3)

#把数组分解为参数
def foo(a,b,c)
  a+b+c
end
args1 = [2,3]
p foo(1,*args1)
args2 = [1,2,3]
p foo(*args2)

#把散列作为参数传递
def func(arg)
  arg
end
p func(a:1,b:2)

def func2(arg1,arg2)
  [arg1,arg2]
end
p func2(100,a:1,b:2,c:3)