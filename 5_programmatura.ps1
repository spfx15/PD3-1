$updates = winget upgrade | Select-String -Pattern "v\d+\."
$count = ($updates | Measure-Object).Count
Write-Host "Sistema ir $count programmas, kuras nepieciesams atjauninat"