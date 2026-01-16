[int]$num = read-host "Dime un número"

for ($i = 1; $i -le $num; $i++) {
    if ($i % 2 -ne 0) {
        Write-Host -NoNewline "$i,"
    }
}