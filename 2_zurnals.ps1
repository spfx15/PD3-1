$limitDate = (Get-Date).AddDays(-7)
$errors = Get-WinEvent -FilterHashTable @{LogName='System'; Level=2; StartTime=$limitDate} -ErrorAction SilentlyContinue
$filePath = "$HOME\Documents\Errors.txt"
$header = if ($errors.Count -gt 10) { "[KRITISKI] Sistema ir nestabila!" } else { "[OK] Kludu limenis normals." }
$report = @($header)
foreach ($e in $errors) {
    $report += "$($e.TimeCreated) - $($e.Message)"
}
$report | Out-File -FilePath $filePath