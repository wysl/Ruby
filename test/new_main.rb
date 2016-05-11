#从外部访问内部实例变量
class Person
  def initialize(name,age,sex)      #initialize 方法，试用new方法生成新的对象时，该方法会被调用，同时new方法的参数会原封不动的传给该方法，因此初始化对象时需要的处理一般都写在这个方法中
    @name = name    #初始化实例变量
    @age = age
    @sex = sex
  end
#  attr_accessor :name,:age,:sex        #设置变量的方法：attr_reader为可读，attr_writer为可写，attr_accessor为可读写
  attr_accessor :name #将name属性标记为可读写
  def info                             #实例方法
    puts "my name is #{@name},I'm #{@age},sex is #{@sex} "
  end
end
tom = Person.new("tom",20,"male")   #创建一个对象并初始化其属性
tom.info
tom.name = "haha"   #对tom的name属性赋值
p tom.name
p tom.class

