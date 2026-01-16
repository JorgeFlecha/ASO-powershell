
$n = Read-Host "Introduce la altura del triángulo"
    for ($i = 1; $i -le $n; $i++) {
        $linea = ""
        for ($j = (2 * $i - 1); $j -ge 1; $j -=2) {
            $linea += "$j "
        }
        Write-Host $linea
}