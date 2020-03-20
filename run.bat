@echo off 

set nameAndArgs=%* 			
::It holds the string 'MainClassName arg1 arg2.....'

::echo %1%				
::First argument(%1) is the MainClassName

if exist %1.class del %1%.class	   	
::If any .class file exists for the given MainClassName already, delete it.

javac %1.java				
::Run the command javac MainClassName.java

if exist %1.class (java %nameAndArgs%) else (echo Compilation failed)
::If any .class file is generated for the given mainclass, it indicates successful compilation, Run the command 'java MainClassName arg1 arg2 ...'
::If any .class file is not generated, it indicates unsuccessful compilaion. Errors are displayed.