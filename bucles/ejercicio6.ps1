$num = 60

while ($true) {
    [int]$numero = Read-Host "Introduce el número para adivinar"
    if ($numero -eq $num){
        Write-Host "OLEEEE LO ADIVINASTE"
        break
    }elseif ($numero -lt $num){
        write-host "El número es menor"
    }elseif ($numero -gt $num){
        write-host "El número es mayor"
    }
}