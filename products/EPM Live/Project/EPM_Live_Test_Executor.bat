Set fileName=%time:~0,2%%time:~3,2%%time:~6,2%_%date:~-10,2%%date:~-7,2%%date:~-4,4%
for /f "tokens=* delims= " %%a in ("%fileName%") do set fileName=%%a
setx testResultLocation TestRun_%fileName%
"c:\Program Files (x86)\SmartBear\TestExecute 10\bin\TestExecute.exe" "D:\EPM Live\products\EPM Live\EPMLiveSuite\EPMLiveSuite.pjs" /run /project:EPMLiveProject /exit /exportlog:D:\EPM Live\TestRun_%fileName%\TestRun_%fileName%.mht
"c:\Program Files (x86)\SmartBear\TestExecute 10\bin\TestExecute.exe" "D:\EPM Live\products\EPM Live\EPMLiveSuite\EPMLiveSuite.pjs" /run /project:EmailSender 