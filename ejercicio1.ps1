[int]$num = read-host "Introduce un número"

If ($num % 2 -eq 0) {
    Write-Host "Es par"
}Else {
    Write-Host "No es par"
}