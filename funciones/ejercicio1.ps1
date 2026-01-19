Function Sumar($a, $b) {
    return $a + $b
}

Function Restar($a, $b) {
    return $a - $b
}

Function Multiplicar($a, $b) {
    return $a * $b
}

Function Dividir($a, $b) {
    if ($b -eq 0) {
        Write-Host "Error: No se puede dividir entre cero."
        return $null
    }
    return $a / $b
}

Function Calculadora() {
    Write-Host "****** CALCULADORA ********"
    Write-Host "1. Sumar"
    Write-Host "2. Restar"
    Write-Host "3. Multiplicar"
    Write-Host "4. Dividir"
    Write-Host "5. Salir"

    $opcion = Read-Host "Elige una opción"

    if ($opcion -eq 5) {
        Write-Host "Saliendo de la calculadora..."
        return
    }

    $num = [int](Read-Host "Introduce un número")
    $num1 = [int](Read-Host "Introduce otro número")

    switch ($opcion) {
        1 {
            $resultado = Sumar $num $num1
            Write-Host "El resultado de la suma entre $num y $num1 es $resultado"
        }
        2 {
            $resultado = Restar $num $num1
            Write-Host "El resultado de la resta entre $num y $num1 es $resultado"
        }
        3 {
            $resultado = Multiplicar $num $num1
            Write-Host "El resultado de la multiplicación entre $num y $num1 es $resultado"
        }
        4 {
            $resultado = Dividir $num $num1
            if ($resultado -ne $null) {
                Write-Host "El resultado de la división entre $num y $num1 es $resultado"
            }
        }
        Default {
            Write-Host "Opción inválida"
        }
    }
}

Calculadora
