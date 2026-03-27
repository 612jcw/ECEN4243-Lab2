# RISC-V Test Runner - Runs all test memfiles and reports results
# Usage: .\run_all_tests.ps1

param(
    [string]$testDir = "riscvtest"
)

Write-Host "`n=== RISC-V Processor Test Runner ===" -ForegroundColor Cyan
Write-Host "Test Directory: $testDir`n" -ForegroundColor Gray

# Find all .memfile files
$testFiles = @(Get-ChildItem -Path $testDir -Filter "*.memfile" -File | Sort-Object Name)

if ($testFiles.Count -eq 0) {
    Write-Host "No test memfiles found in $testDir" -ForegroundColor Yellow
    exit 1
}

Write-Host "Found $($testFiles.Count) test(s):`n" -ForegroundColor Cyan

$results = @()

# Run each test
foreach ($testFile in $testFiles) {
    $testName = $testFile.BaseName
    $memfilePath = $testFile.FullName

    Write-Host "Running test: $testName ... " -NoNewline -ForegroundColor Yellow

    $output = & vsim -c -do "do hdl/riscv_single_headless.do" "+memfile=$memfilePath" 2>&1 | Out-String

    if ($output -match "# Simulation succeeded") {
        Write-Host "PASS" -ForegroundColor Green
        $status = "PASS"
    } else {
        Write-Host "FAIL" -ForegroundColor Red
        $status = "FAIL"
    }

    $resultObj = New-Object PSObject
    $resultObj | Add-Member -NotePropertyName "Test" -NotePropertyValue $testName
    $resultObj | Add-Member -NotePropertyName "Status" -NotePropertyValue $status
    $results += $resultObj
}

# Display results
Write-Host "`n============================================" -ForegroundColor Cyan
Write-Host "           TEST RESULTS SUMMARY             " -ForegroundColor Cyan
Write-Host "============================================" -ForegroundColor Cyan
Write-Host ""

$results | Format-Table -AutoSize

# Summary statistics
$passCount = ($results | Where-Object { $_.Status -eq "PASS" }).Count
$failCount = ($results | Where-Object { $_.Status -eq "FAIL" }).Count

Write-Host "============================================" -ForegroundColor Cyan
Write-Host "SUMMARY:" -ForegroundColor Cyan
Write-Host "  Total Tests: $($results.Count)" -ForegroundColor Gray
Write-Host "  Passed:      $passCount" -ForegroundColor Green
Write-Host "  Failed:      $failCount" -ForegroundColor Red

if ($results.Count -gt 0) {
    $passRate = [Math]::Round((($passCount / $results.Count) * 100), 1)
    Write-Host "  Pass Rate:   $passRate%" -ForegroundColor Cyan
}

Write-Host "============================================" -ForegroundColor Cyan

exit
