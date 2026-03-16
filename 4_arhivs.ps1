$sourceFile = "$HOME\Documents\Errors.txt"
$dateStr = Get-Date -Format "yyyy-MM-dd"
$zipPath = "$HOME\Documents\Atskaite_$($dateStr).zip"
Compress-Archive -Path $sourceFile -DestinationPath $zipPath -Force
$size = (Get-Item $zipPath).Length / 1KB
Write-Host "Arhiva izmers: $size KB"