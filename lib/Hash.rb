=begin
        哈希，哈希是一种类似字典的集合，集合中包含了唯一的键（key）和键所对应的值（value）,键具有唯一性
=end

#新建一个Hash
ha = { "a" => 1, "b" => 2 }       #新建一个Hash
ha = { a:1, b:2 }                 #新建一个Hash，建议使用这种方法
ha = Hash.new(0)                  #为Hash设置一个默认值0，不传入则为nil
ha.default                        #使用default方法输出此hash的默认值

ha = Hash.new { |hash, key| hash[key] = "不存在键#{key}" } #设置更详细的Hash的默认值
p ha[:not_exit]

#Hash的基本用法----获得Hash的信息
ha1 = { a:1, b:2 }
ha1.default                     #返回Hash的默认值：nil
ha1.empty?                      #判断Hash是否为空：false
ha1.eql?({a:1, b:2})            #判断与其他的Hash是否相等：true
ha1.length                      #返回Hash的长度：2
ha1.size                        #返回Hash的长度：2
ha1.clear                       #清空Hash，会修改原Hash

#Hash的基本用法----访问Hash中的键值对
ha2 = { a:1, b:2 }
ha2[:a]                 #返回键多对应的值：1；在没有设置默认值的情况下，如果输入一个不存在的键时则返回nil
ha2.fetch(:a)           #返回键多对应的值：1；如果输入一个不存在的键时则直接报错：raise keyError
ha2.has_key?(:a)        #检查Hash中是否存在:a这个键，返回值为布尔类型：true
ha2.key(2)              #返回值所对应的键:b
ha2.keys                #返回Haah中所有的键：[:a, :b]
ha2.values              #返回Hash中所有的值：[1, 2]
ha2.assoc(:a)           #将Hash中某个键和键所对应的值组合为数组：[:a, 1]

#Hash的基本用法-向Hash中增加键值对
ha3 = { a:1, b:2 }
ha3[:c] = 3             #向Hash中增加键值对：{:a=>1, :b=>2, :c=>3}
ha3.store(:d, 4)        #向Hash中增加键值对：{:a=>1, :b=>2, :c=>3, :d=>4}
ha3.merge({ e:5 })      #向Hash中增加键值对,不会修改原Hash：{:a=>1, :b=>2, :c=>3, :d=>4, :e=>5}
ha3.update({ e:5 })     #向Hash中增加键值对：{:a=>1, :b=>2, :c=>3, :d=>4, :e=>5}

#Hash的基本用法-删除Hash中的特定键值对
ha4 = { a:1, b:2, c:3, d:4, e:5 }
ha4.delete(:a)                            #删除键和键所对应的值：{:b=>2, :c=>3, :d=>4, :e=>5}
ha4.delete_if { |key, value| value > 4 }  #遍历Hash,删除满足条件的键和键所对应的值：{:b=>2, :c=>3, :d=>4}
ha4.keep_if { |key, value| value < 4 }    #遍历Hash,只保留满足条件的键和键所对应的值：{:b=>2, :c=>3}
ha4.shift                                 #删除第一个键和键所对应的值,shift的返回值是一个数组：[:b, 2]

#Hash的基本用法----遍历Hash中的键值对
ha5 = { a:1, b:2 }
ha5.each { |key, value| puts key, value }       #遍历Hash：a\n1\nb\n2\n
ha5.each_pair { |key, value| puts key, value }  #遍历Hash：a\n1\nb\n2\n
ha5.each_key { |key| puts key }                 #遍历Hash中所有的键：a\nb\n
ha5.each_value { |value| puts value }           #遍历Hash中所有的值：1\n2\n
ha5.select { |key, value| value < 2 }           #筛选出值小于2的键和与之对应的值,不会修改原Hash：{:a =>1}
ha5.reject { |key, value| value < 2 }           #筛选掉值小于2的键和与之对应的值后剩下的键和与之对应的值,不会修改原Hash：{:b =>2}

#Hash的基本用法----一些特殊用法
ha6 = { a:1, b:2, c:3, d:{ e:5, f:6 }, "g" => 7 }
ha6.flatten                           #将Hash转化为对应的数组：[:a, 1, :b, 2, :c, 3, :d, {:e=>5, :f=>6}, "g", 7]
ha6.invert                            #将Hash中的键与值对调：{1=>:a, 2=>:b, 3=>:c, {:e=>5, :f=>6}=>:d, 7=>"g"}
ha6.to_a                              #将Hash转化为对应的数组，每个键值对会生成一个子数组：[[:a, 1], [:b, 2], [:c, 3], [:d, {:e=>5, :f=>6}], ["g", 7]]
ha6.to_s                              #直接输出Hash结构，适用于生成log："{:a=>1, :b=>2, :c=>3, :d=>{:e=>5, :f=>6}, \"g\"=>7}"
