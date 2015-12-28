=begin
        #字符串
        #数字,数字的几个类：  Fixnum:原生的机器字节所能存储的最大的整型值； Bignum:超出原生的机器字节所能存储的最大的整型值的整型值；  Float:存储浮点类型； BigDecimal:提供一个任意精度的浮点数字类型； Numeric:所有数字的副类，所有其他的数字类型
=end

#字符串的一些基本方法
p "string"            #输出结果为："string"
p "String"  * 2       #输出结果为："StringString"
p "String" + "Class"  #输出结果为："StringClass"

"a".ord           #获得字符串第一个字符的对应的ASCII编码：97
"a" < "b"         #比较两边ASCII的大小：true
"wa" =~ /a/       #用正则匹配字符在字符串中的位置，起始位0：1

#数字类型的一些基本方法
5.times { |x| puts x }         #使用 次数.times方法，输出从0到4之间大的五个数：0\n1\n2\n3\n4\n
5.times { puts "a" }           #使用 次数.times 的方法进行计次，将"a"连续输出五次：a\na\na\na\na\n
5.upto(10) { |x| puts x  }     #使用 起始值.upto(末尾值) 的方法进行控制输出的范围：5\n6\n7\n8\n9\n10\n
10.downto(5) { |x| puts x }    #使用 末尾值.downto(初始值) 倒序输出：10\n9\n8\n7\n6\n5\n
15.step(50, 8) { |x| puts x }  #使用 初始值.step(末尾值, 步进值) 输出结果，结果小于等于末尾值：15\n23\n31\n39\n47\n

#bigdecimal的用法
require 'bigdecimal'
a = BigDecimal.new("0.07")
p (a * 100).to_i 
