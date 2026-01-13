$edad = [int](read-host "Introduce tu edad")

if ($edad -lt 4) {
    write-host "La entrada es gratis."
}
elseif ($edad -ge 4 -and $edad -le 18) {
    write-host = "La entrada es de 5€"
}
elseif ($edad -gt 18) {
    write-host = "La entrada es de 10€"
}