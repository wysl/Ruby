require 'FileUtils'
Dir.mkdir("C:/IceTech")
Dir.mkdir("C:/IceTech/iPushV3")
BEGIN {
system 'jdk-6u45-windows-i586.exe && apache-tomcat-7.0.42 && mysql-essential-5.1.68-win32.msi && mysql-connector-odbc-5.1.8-win32.msi && vc8redist_x86.exe && vc9redist_x86_sp1.exe'
}
FileUtils.cp('C:\Program Files (x86)\Java\jre6\bin\msvcr71.dll', 'C:\Program Files (x86)\Java\jre6\bin\client')
FileUtils.cp('C:\ipush\ipush\3rd-party\mysql-connector-java-5.1.17-bin.jar', 'C:\Program Files (x86)\Apache Software Foundation\Tomcat 7.0\lib')
FileUtils.cp_r( 'C:\ipush\ipush\iPushV3\iPushV3', 'C:\IceTech' )
system 'mysql -uroot -phiroot < C:\IceTech\iPushV3\Tools\mysql_cluster.sql'
system 'C:\IceTech\iPushV3\Tools\ipush_inst'
system 'C:\IceTech\iPushV3\Tools\ipush_start'
FileUtils.mv( 'C:\IceTech\iPushV3\BackOffice', 'C:\Program Files (x86)\Apache Software Foundation\Tomcat 7.0\webapps')
FileUtils.mv( 'C:\IceTech\iPushV3\bkosys', 'C:\Program Files (x86)\Apache Software Foundation\Tomcat 7.0\webapps')



