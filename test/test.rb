class Person
  def initialize(name=wang,age=18)
    @name = name
    @age = age
    @motherland = "china"
  end
def talk
  puts "my name is #{@name},age is #{@age},motherland is #{@motherland}"
end
end


class Person
#  attr_reader :name, :age, :motherland
#  attr_writer :name, :age, :motherland
  attr_accessor :name, :age, :motherland
end




p = Person.new("zhangsan", 20)
p.name = "Aleax"
p.age = 25
p.motherland = "Franch"
p.talk

class Person
  @@dns = "~~~~~~~~~~~~~~~~~~~~xxx~~~~~x~"
end
class Robot < Person
end

r = Robot.new("r")
class Robot
  def talk
    puts "dna is #{@@dna}"
  end
end

p r.talk