# Search for Codex app
Get-AppxPackage | Where-Object { $_.Name -like '*codex*' -or $_.Name -like '*Codex*' } | Format-List Name, InstallLocation, PackageFamilyName

# Also search for any exe named codex
Get-ChildItem -Path "C:\Users\24310\AppData\Local" -Recurse -Filter "*codex*.exe" -ErrorAction SilentlyContinue | Select-Object FullName -First 5
Get-ChildItem -Path "C:\Program Files" -Recurse -Filter "*codex*.exe" -ErrorAction SilentlyContinue | Select-Object FullName -First 5
