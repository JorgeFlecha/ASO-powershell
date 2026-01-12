[int]$num1 = read-host "Introduce un número: "
[int]$num2 = read-host "Introduce otro número: "

If ($num1 -gt $num2) {
    Write-Host "El número $num1 es mayor que $num2."
}Elseif ($num1 -eq $num2) {
    Write-Host "Los números son iguales."
}Else {
    Write-Host "El número $num1 es menor que $num2."
}