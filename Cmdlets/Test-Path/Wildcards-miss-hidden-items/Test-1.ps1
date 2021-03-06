
# make a hidden file temp.txt
$item = New-Item temp.txt -ItemType File -Force
$item.Attributes = $item.Attributes -bor [System.IO.FileAttributes]::Hidden

# True, expected
$r = Test-Path temp.txt
"Test-Path temp.txt = $r"

# False, may be unexpected
$r = Test-Path temp.*
"Test-Path temp.* = $r"

# clean
Remove-Item temp.txt -Force
