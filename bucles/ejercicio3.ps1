[int]$num = read-host "Dime un número"

for ($i = $num; $i -ge 0; $i--) {
    if ($i -ne 0) {
        Write-Host -NoNewline "$i,"
    } else {
        Write-Host $i
    }
}