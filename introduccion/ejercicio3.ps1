[int]$numhoras = Read-Host "Cuantas horas trabajas: "
[int]$costehoras = Read-Host "Cuanto cobras por hora: "
$total = $numhoras * $costehoras
Read-Host "Tu salario es: $total €" 
