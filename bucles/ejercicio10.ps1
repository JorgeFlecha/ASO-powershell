$salir = $false
while (-not $salir) {

write-host " Bienvenido al menú:

a) Crear una carpeta

b) Crear un fichero nuevo

c) Cambiar el nombre de un fichero o carpeta

d) Borrar un archivo o carpeta

e) Verificar si existe un fichero o carpeta

f) Mostrar el contenido de un directorio.

g) Mostar la fecha y hora actuales

x) Salir"

$opcion = Read-Host "Que opción quieres"

switch ($opcion) {
    "a" {
        Write-Host "Has elegido crear una carpeta."
        $carpeta = Read-Host "Que nombre quieres darle a la carpeta"
        New-Item C:\$carpeta -ItemType directory
    }
    "b"{
        Write-Host "Has elegido crear un fichero nuevo."
        $fichero = Read-Host "Que nombre quieres darle al archivo"
        New-Item C:\$fichero -ItemType file
    }
    "c"{
        Write-Host "Has elegido cambiar el nombre de un fichero o carpeta."
        $ruta = Read-Host "Pon la ruta completa del archivo"
        $acambiar = Read-Host "Pon el nuevo nombre de archivo"
        Rename-Item $ruta $acambiar

    }
    "d"{
        Write-Host "Has elegido borrar un archivo o carpeta."
        $eliminar = Read-Host "Pon la ruta completa del archivo a eliminar"
        Remove-Item $eliminar
    }
    "e"{
        Write-Host "Has elegido verificar si existe un fichero o carpeta."
        $ruta3 = Read-Host "Dime si quieres verificar un fichero o carpeta"
        if ($ruta3 -eq "archivo"){
            $archivo2 = Read-Host "Introduce la ruta entera del archivo"
            $comprobar = Test-Path $archivo2
            if ($comprobar -eq "true") {
                write-host "Existe el fichero."
            }else {
                Write-Host "No existe el fichero."
            }
        }elseif ($ruta3 -eq "carpeta") {
            $carpeta2 = Read-Host "Introduce la ruta entera de la carpeta"
            $comprobar2 = Test-Path $carpeta2 -PathType container
            if ($comprobar2 -eq "true") {
                write-host "Existe la carpeta."
            }else {
                Write-Host "No existe la carpeta."
            }
        }
    }
    "f"{
        Write-Host "Has elegido mostrar el contenido de un directorio."
        $contenido = Read-Host "Introduce la ruta completa del directorio"
        Get-ChildItem -Path $contenido -Recurse
    }
    "g"{
        Write-Host "Has elegido mostar la fecha y hora actuales."
        $fechaActual = Get-Date
        Write-Host $fechaActual
    }
    "x"{
        Write-Host "Has elegido salir."
        $salir = $true
    }
}
}
