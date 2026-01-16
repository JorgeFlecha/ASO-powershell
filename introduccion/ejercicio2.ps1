[int]$num1 = read-host "Escribe un número: "
[int]$num2 = read-host "Escribe otro número: "
$solucion = $num1 + $num2
$solucion2 = $num1 - $num2
$solucion3 = $num1 * $num2
$solucion4 = $num1 / $num2
write-host "El resultado de $num1 + $num2 es igual a $solucion"
write-host "El resultado de $num1 - $num2 es igual a $solucion2"
write-host "El resultado de $num1 * $num2 es igual a $solucion3"
write-host "El resultado de $num1 / $num2 es igual a $solucion4"
