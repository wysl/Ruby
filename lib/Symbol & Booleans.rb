=begin
        符号，符号对象代表了一些Ruby解释器内部的字符串，它们通过形如:symbol和:"string"的语法，或者通过to_sym方法来生成，每个符号都具有唯一的ID，从而提高性能
        布尔值，布尔值就是真假值：True & False
=end

#符号ID示例
p :name.object_id
p :name.object_id

#布尔值的类
p true.class
p false.class

#布尔值的方法
true & true       #与的用法，只有当条件都成立时才会返回：true
true & false      #返回：false
false & false     #返回：false

true | true       #或的用法，只要有一个条件成立时就会返回：true
true | false      #返回：true
false | false     #返回：false

true | false      #异或的用法，只有两边判断不相同时才返回：true
true | true       #返回：false
false | false     #返回：false
