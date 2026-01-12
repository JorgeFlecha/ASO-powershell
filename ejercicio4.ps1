[Int]$num = Read-Host "Introduce un número: "
[Int]$num1 = Read-Host "Introduce otro número: "
write-host "****** CALCULADORA ********
1.Sumar
2.Restar
3.Multiplicar
4.Dividir"
[Int]$opcion = Read-Host "Introduce un valor para operar: "
switch ($opcion) { 
	1 {
		Write-Host "Has introducido el valor 1"
        $sumar = $num + $num1
        write-host "El resultado de la suma entre $num y $num1 es igual a $sumar"
	}
	2 {
		Write-Host "Has introducido el valor 2"
        $restar = $num - $num1
        write-host "El resultado de la resta entre $num y $num1 es igual a $restar"
	}
	3 {
		Write-Host "Has introducido el valor 3"
        $multiplicar = $num * $num1
        write-host "El resultado de la multiplicación entre $num y $num1 es igual a $multiplicar"
	}
	4 {
		Write-Host "Has introducido el valor 4"
        $dividir = $num / $num1
        write-host "El resultado de la división entre $num y $num1 es igual a $dividir"
	}
}