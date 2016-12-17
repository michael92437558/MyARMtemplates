# Script.ps1
#
param($url,$key)



New-Item -ItemType Directory -Force -Path 'C:\CustomPrograms'
Invoke-WebRequest -Uri $url -OutFile 'c:\customprograms\program.zip'

Expand-Archive -Path 'c:\customprograms\program.zip' -DestinationPath 'c:\customprograms'

Write-Output "URL: $url" |Out-File "c:\customprograms\test.txt"
Write-Output "key: $key"|Out-File "c:\customprograms\test.txt" -Append
