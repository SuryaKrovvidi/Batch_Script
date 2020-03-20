@echo off 
:: Executes the code
set nameAndArgs=%*
::echo %1%
if exist %1.class del %1%.class
javac %1.java
if exist %1.class (java %nameAndArgs%) else (echo Compilation failed)
