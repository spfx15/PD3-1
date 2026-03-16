$disk = Get-PSDrive C
$freePrecent = ($disk.Free / $disk.Used) * 100
$logPath = "$HOME\Documents\Apkope.log"
$timestamp = Get-Date -Format "yyyy-MM-dd HH:mm"
if ($freePrecent -lt 25) {
    Clear-RecycleBin -Force -ErrorAction SilentlyContinue
    Remove-Item "$env:Temp\*" -Recurse -Force -ErrorAction SilentlyContinue
    "[$timestamp] Tirisana veikta. Atbrivoti 2GB." | Out-File -FilePath $logPath -Append
} else {
    "[$timestamp] Vieta pietiekama." | Out-File -FilePath $logPath -Append
}