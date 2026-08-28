# Stops the SkillsForge engine by the PID that owns port 8749 (never by name).
$port = 8749
try {
    $conn = Get-NetTCPConnection -LocalPort $port -State Listen |
        Select-Object -First 1
    if ($conn) {
        Stop-Process -Id ([int]$conn.OwningProcess) -Force -ErrorAction SilentlyContinue
        Write-Host "SkillsForge engine stopped (PID $($conn.OwningProcess))."
    } else {
        Write-Host "No engine listening on port $port."
    }
} catch {
    Write-Host "Could not query port $port: $_"
}
