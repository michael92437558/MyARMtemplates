#
# Script.ps1
#
param($url,$key)

Write-Output "URL: $url" |Out-File "$HOME\test.txt"
Write-Output "key: $key"|Out-File "$HOME\test.txt" -Append