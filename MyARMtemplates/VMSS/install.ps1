# Script.ps1
#
param($url,$key)



New-Item -ItemType Directory -Force -Path 'C:\CustomPrograms'
Invoke-WebRequest -Uri $url -OutFile 'c:\customprograms\program.zip'

if($PSVersionTable.PSVersion.Major -gt 4){
	Expand-Archive -Path 'c:\customprograms\program.zip' -DestinationPath 'c:\customprograms'
}
else{
	$shell = new-object -com shell.application
	$zip = $shell.NameSpace(¡°c:\customprograms\program.zip¡±)
	foreach($item in $zip.items())
	{
		$shell.Namespace(¡°c:\customprograms¡±).copyhere($item)
	}
}

Write-Output "URL: $url" |Out-File "c:\customprograms\arguments.txt"
Write-Output "key: $key" |Out-File "c:\customprograms\arguments.txt" -Append
