$target = "C:\Program Files\WindowsApps\OpenAI.Codex_26.601.2237.0_x64__2p2nqsd0c76g0\Codex.exe"
$desktop = [Environment]::GetFolderPath("Desktop")
$shortcutPath = Join-Path $desktop "Codex.lnk"

$WScriptShell = New-Object -ComObject WScript.Shell
$shortcut = $WScriptShell.CreateShortcut($shortcutPath)
$shortcut.TargetPath = $target
$shortcut.WorkingDirectory = Split-Path $target -Parent
$shortcut.Description = "OpenAI Codex"
$shortcut.Save()

Write-Output "Shortcut created: $shortcutPath"
Write-Output "Target: $target"
Write-Output "Exists: $(Test-Path $target)"
