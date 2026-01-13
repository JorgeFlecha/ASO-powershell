$puntuacion = [double](Read-Host "Introduce la puntuación obtenida")
$dinero = 2400

if ($puntuacion -eq 0.0) {
    $nivel = "Inaceptable"
}
elseif ($puntuacion -eq 0.4) {
    $nivel = "Aceptable"
}
elseif ($puntuacion -ge 0.6) {
    $nivel = "Meritorio"
}
else {
    Write-Host "La puntuación no es válida, tiene que ser 0.0, 0.4 o 0.6 o más."
    exit
}

$dinero = $puntuacion * $dinero

Write-Host "Nivel: $nivel"
Write-Host "Has conseguido: $dinero €"
