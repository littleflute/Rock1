del ms.js 

echo var f = [];				>>ms.js
echo f[0]	= "v0.0.8";			>>ms.js

setlocal ENABLEDELAYEDEXPANSION
call set /a x = 0

for /F "delims=" %%a in ('dir *#*.mp3 /b') do (
	call set /a x = !x! + 1
	echo f[!x!]	= "%%a";		>>ms.js
)
 