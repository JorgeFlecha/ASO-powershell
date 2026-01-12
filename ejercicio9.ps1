[int]$renta = read-host "Introduce tu renta"

if ($renta -lt 10000) {
    write-host "Tu tipo impositivo es del 5%"
}elseif ($renta -ge 10000 -and $renta -lt 20000) {
    write-host "Tu tipo impositivo es del 15%"
}elseif ($renta -ge 20000 -and $renta -lt 35000) {
    write-host "Tu tipo impositivo es del 20%"
}elseif ($renta -ge 35000 -and $renta -lt 60000) {
    write-host "Tu tipo impositivo es del 30%"
}elseif ($renta -ge 60000) {
    write-host "Tu tipo impositivo es del 45%"
}