@echo OFF

SET uninstall=adb shell pm uninstall -k --user 0

FOR /F "tokens=1,2 delims=:" %%a in (bloatList.txt) DO (
	echo|set /p="Unistalling %%a: "
	%uninstall% %%b
)











