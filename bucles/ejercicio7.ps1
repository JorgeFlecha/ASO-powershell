[int]$num= Read-Host "Introduce un número "

for ($i = 0; $i -lt $num; $i++) {
    for ($j = 1; $j -le $i; $j++) {
        Write-Host -NoNewline "*"
    }
    Write-Host "*`n"
}