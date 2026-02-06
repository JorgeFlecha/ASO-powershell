Import-Csv "C:\Users\Administrador\Downloads\empleados.csv" -Delimiter ";" | Foreach-object {
    $usuario = "$($_.nombre).$($_.apellido)"
    if ($_.departamento -eq "PERSONAL") {
        Set-ADUser -Identity $usuario -ProfilePath \\empresa-jorge\Empresa_users$\$usuario
    }
}
