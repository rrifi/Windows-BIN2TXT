SET TMP=%temp%
::SET CUR=%cd%

::copy %1 %CUR%

certutil -encodehex %1 %TMP%\tmp1.txt
powershell -command "(Get-Content %TMP%\tmp1.txt) -replace '^.....|...................$', '' | Set-Content %TMP%\tmp2.txt"
powershell -command "(Get-Content %TMP%\tmp2.txt) -replace '	', '' | Out-File %TMP%\tmp3.txt"
powershell -command "(Get-Content %TMP%\tmp3.txt) -replace ' ', '' | Out-File '%1_DUMP.txt'"
del %TMP%\tmp1.txt %TMP%\tmp2.txt %TMP%\tmp3.txt
	
