Clear-Host
[int]$num = read-host "Dime un número"
Write-Host "###### Tabla de multiplicar del número $num ######"

for ($i = 0; $i -le 10; $i++) {
        $res = $i * $num
        Write-Host "$i * $num = $res"
    }