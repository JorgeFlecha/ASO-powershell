$contraseña = "contraseña"
$comprobar = read-host "Introduce la contraseña"

if ($comprobar -eq $contraseña){
    Write-Host "$contraseña"
}else {
    Write-Host "No es esa contraseña"
}