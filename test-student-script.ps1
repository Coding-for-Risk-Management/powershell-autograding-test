# Import the student's script
. "$PSScriptRoot\student-script.ps1"

# Initialize variables
$totalTests = 2
$passedTests = 0

# Test 1: Get-Greeting with "World"
$expected = "Hello, World!"
$actual = Get-Greeting -Name "World"
if ($actual -eq $expected) {
    Write-Host "Test 1 Passed"
    $passedTests++
} else {
    Write-Host "Test 1 Failed: Expected '$expected', got '$actual'"
}

# Test 2: Get-Greeting with "GitHub"
$expected = "Hello, GitHub!"
$actual = Get-Greeting -Name "GitHub"
if ($actual -eq $expected) {
    Write-Host "Test 2 Passed"
    $passedTests++
} else {
    Write-Host "Test 2 Failed: Expected '$expected', got '$actual'"
}

# Output results
if ($passedTests -eq $totalTests) {
    Write-Host "All tests passed."
    exit 0  # Success
} else {
    Write-Host "$passedTests out of $totalTests tests passed."
    exit 1  # Failure
}
