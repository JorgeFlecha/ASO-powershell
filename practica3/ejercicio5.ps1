$fichero = read-host "Introduce la ruta absoluta de un fichero"

if (Test-Path -Path $fichero -PathType Leaf) {
    Write-Host "El archivo '$fichero' existe."
} else {
    Write-Host "El archivo '$fichero' no existe."
}