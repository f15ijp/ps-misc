#Changes tabbs to semicolons
param ($path, $outPath)

if ($path -eq $null){
	$path = read-host -Prompt "Enter inputfile"
}
if ($outPath -eq $null){
	$outPath = read-host -Prompt "Enter outputfile"
}

Get-Content -path $path | 
ForEach-Object {$_ -replace "`t",";" } |  
Out-File -filepath $outPath