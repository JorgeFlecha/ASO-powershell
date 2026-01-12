[int]$num1 = read-host "Introduce tu edad: "


If ($edad -ge 18) {
    Write-Host "Eres mayor de edad."
}Else {
    Write-Host "Eres menor de edad."
}