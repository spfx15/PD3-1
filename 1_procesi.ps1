$processes = Get-Process | Where-Object { $_.Name -ne "svchost" } | sort-object WorkingSet64 -Descending | Select-Object -First 5
$totalRAM = ($processes | Measure-Object -Property WorkingSet64 -Sum).Sum / 1MB
$totalRAMRounded = [Math]::Round($totalRAM, 1)
Write-Host "Top 5 procesu total RAM: $totalRAMRounded MB"