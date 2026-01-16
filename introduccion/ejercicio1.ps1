$nombre = $env:USERNAME
$dir = Get-Location
$dominio = $env:USERDOMAIN
$equipo = $env:COMPUTERNAME
write-host "Hola $nombre"
write-host "Tu directorio de trabajo es $dir"
write-host "Perteneces al dominio $dominio"
write-host "Tu equipo se llama $equipo"
