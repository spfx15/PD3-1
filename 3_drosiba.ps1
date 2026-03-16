$status = Get-MpComputerStatus
$lastScan = $status.QuickScanAge
$isRealTimeOn = $status.RealTimeProtectionEnabled
if ($isRealTimeOn -eq $false -or $lastScan -gt 3) {
    Write-Host "Sistema ir apraudeta!" -ForegroundColor Red
} else { 
    Write-Host "Sistema ir drosa." -ForegroundColor Green
}