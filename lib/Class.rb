#类与对象
class Person
  def initialize(name,age,sex)      #initialize 方法，试用new方法生成新的对象时，该方法会被调用，同时new方法的参数会原封不动的传给该方法，因此初始化对象时需要的处理一般都写在这个方法中
    @name = name    #初始化实例变量
    @age = age
    @sex = sex
  end
#  attr_accessor :name,:age,:sex        #设置变量的方法：attr_reader为可读，attr_writer为可写，attr_accessor为可读写
  attr_accessor :age #将age属性标记为可读写
  def info                             #实例方法
    puts "my name is #{@name},I'm #{@age},sex is #{@sex} "
  end
end
leijun = Person.new("BuSi Lei",20,"male")   #创建一个对象并初始化其属性
leijun.info
leijun.age = 50   #对leijun的age属性赋值
p leijun.age
p leijun.class


#父类与子类
class Person
  @@dna = "--~~~----~~~---"     #在父类中创建一个类变量@@dna
end


class Phone < Person      #创建一个子类Phone 继承 Person类的一部分属性
end
xiaomi = Phone.new("xiaomi4",3,"other")
xiaomi.info
xiaomi.age = 4
p xiaomi.age


class Phone
  @@dna = "FF-F0"               #在子类Phone中修改类变量@@dna，也会使父类中的同名类变量发生改变
  def info                      #为子类定义一个输出类变量属性的实例方法，与父类Person 中的实例方法同名,只会覆盖本身继承过来的方法，不会影响到父类
    puts "dna ? - #{@@dna}"
  end
end

class Person
  def sup
    puts "#{@@dna}"
  end
end

xiaomi.info
leijun.info         #输出无变化
leijun.sup          #@@dna的输出值被改变


#类实例变量     （类也是对象，一切皆为对象），不会被继承
class Person
  @race = "yello"
  def race
    puts "race is #{@race}"
  end
end
leijun.race               #输的结果可看出，在一个类中，一个实例变量不能访问类实例变量
xiaomi.race

#类方法
class Person
  @race = "yello"
  def self.race           #定义类方法，形如 def self.xxxxxx，来调用类的实例变量
    puts "race is #{@race}"
  end
end
Person.race               #直接使用类名.类方法名来调用类方法


#class Person            #定义类方法的第二种方法
#  class << self
#    def test
#      puts "class method"
#    end
#  end
#end

class Person
  def self.race=(race)  #定义一个形如self.xxx=(xxx)的方法，来修改类变量的属性
    @race = race
  end
end
Person.race = "Black" #修改属性
Person.race
Phone.race              #子类不能继承父类的类实例变量

class Phone
  @race = "Red"         #为子类创建一个类实例变量
end
Phone.race            #可以继承类方法，但不能继承类实例变量，通过子类自己创建的类实例变量，可以调用继承过来的类方法来输出结果



#限定方法访问的作用域   public,private,protected; public为默认模式
class Person
  private           #定于test方法的作用域； private 与 protected，都不能在外部访问test方法
  def test
    puts "Hello Thank you"
  end
end
#leijun.test       #结果报错，在对象外部不能调用私有的实例方法

class Person
  def test2       #定义一个test2方法调用内部test方法
    test
  end
  protected         #设置为private或者protected 都能test2方法调用
    def test
    puts "Hello Thank you"
  end
end
leijun.test2
xiaomi.test2
leijun.send(:test)     #通过send方法能直接调用类的私有方法

class Animal
   def antest
     haha = Person.new("haha",20,"male")
     haha.test2                            #给定一个外部方法访问的接口，通过这个方法访问其他类中的私有实例方法，private或者protected 都可以
   end
end
Animal.new.antest

