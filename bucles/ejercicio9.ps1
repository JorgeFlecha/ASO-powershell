$contraseña = "contraseña"

while ($true) {
    $pregunta = Read-Host "Introduce la contraseña"
    if ($pregunta -eq $contraseña) {
        Write-Host "La contraseña es correcta."
        break
    }else{
        Write-Host "Vuelve a introducir la contraseña."
    }
}