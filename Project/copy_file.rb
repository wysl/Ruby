#TCData递归拷贝
require 'FileUtils'
y = ["05","06","07","08","09","10","11","12","13","14","15","16"]
m = ["01","02","03","04","05","06","07","08","09","10","11","12"]
y.each do |i|
  puts "20#{i}"
  FileUtils.mkdir_p("D:/test/daygen/20#{i}/")
  FileUtils.cp_r("D:/IceTech/TCData/kgen/daygen/20#{i}/TWF","D:/test/daygen/20#{i}/")
end

y.each do |i|
  m.each do |o|
    time_alone = "20#{i}#{o}"
    puts time_alone
    if time_alone.to_i < 201606
    FileUtils.mkdir_p("D:/test/kdb/20#{i}#{o}/")
    FileUtils.cp_r("D:/IceTech/TCData/kgen/kdb/20#{i}#{o}/TWF","D:/test/kdb/20#{i}#{o}/")
    else
      break
    end
  end
end

y.each do |i|
  m.each do |o|
    time_alone = "20#{i}#{o}"
    puts time_alone
    if time_alone.to_i < 201606
    FileUtils.mkdir_p("D:/test/tickgen/20#{i}#{o}/")
    FileUtils.cp_r("D:/IceTech/TCData/kgen/tickgen/20#{i}#{o}/TWF","D:/test/tickgen/20#{i}#{o}/")
    else
      break
    end
  end
end


#y.each do |i|
#  m.each do |o|
#  puts "20#{i}"
#  FileUtils.mkdir_p("D:/IceTech/TCData/kgen/daygen/20#{i}/TWF")
#  puts "20#{i}#{o}"
#  FileUtils.mkdir_p("D:/IceTech/TCData/kgen/kdb/20#{i}#{o}/TWF")
#  FileUtils.mkdir_p("D:/IceTech/TCData/kgen/tickgen/20#{i}#{o}/TWF")
#  end
#end