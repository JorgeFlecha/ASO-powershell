#Creamos la carpeta padre dentro del dominio con proteccion contra eliminación.
New-ADOrganizationalUnit -Name "Empresa" -Path "DC=jorge,DC=local" -ErrorAction SilentlyContinue -ProtectedFromAccidentalDeletion $false
#Importamos el csv.
Import-Csv -Path "C:\Users\Administrador\Downloads\departamentos.csv" -Delimiter ";" | ForEach-Object {
#Creamos las unidades orgnizativas con el nombre del departamento en la ruta de la otra carpeta y importando la descripcion de cada usuario.
    New-ADOrganizationalUnit -name $_.departamento -Path "OU=Empresa,DC=jorge,DC=local" -Description $_.descripcion -ErrorAction SilentlyContinue -ProtectedFromAccidentalDeletion $false
#Creamos los grupos con las variables del archivo de aules,y los metemos dentro de las unidades organizativas.
    New-ADGroup -name $_.departamento -SamAccountName $_.departamento -GroupScope Global -GroupCategory Security -Path "OU=$($_.departamento),OU=Empresa,DC=jorge,DC=local" -ErrorAction SilentlyContinue
}
# Importamos el otro csv.
Import-Csv -Path "C:\Users\Administrador\Downloads\empleados.csv" -Delimiter ";" | ForEach-Object {
#Creamos los usuarios con las variables del archivo y le ponemos contraseñas.
    New-ADUser -Name "$($_.nombre) $($_.apellido)" -GivenName $_.nombre -Surname $_.apellido -SamAccountName "$($_.nombre).$($_.apellido)" -Path "OU=$($_.departamento),OU=Empresa,DC=jorge,DC=local" -Department $_.departamento -Enabled $true -AccountPassword (ConvertTo-SecureString "As0.2025!" -AsPlainText -Force)
#Añadimos los usuarios a los grupos que hemos creado anteriormente.
    Add-ADGroupMember -Identity $_.departamento -Members "$($_.nombre).$($_.apellido)"
}
