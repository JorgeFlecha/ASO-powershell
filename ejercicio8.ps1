$nombre = read-host "Introduce el nombre"
$sexo = read-host "Introduce tu sexo (F/M)"

if ( $nombre -match '^[a-m]' -and $sexo -eq "F") {
    write-host "Grupo A"
}ElseIf ($nombre -match '^[n-z]' -and $sexo -eq "M") {
    write-host "Grupo B"
}