$comprobar = read-host "Introduce un fichero o directorio"

if (Test-Path -Path $comprobar -PathType Container) {

    Get-ChildItem -Path $comprobar -Recurse
}else {
    Write-Host "Es un fichero."
}







