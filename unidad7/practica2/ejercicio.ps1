New-Item -ItemType Directory -Path "C:\" -Name "Empresa"
#permisos carpeta empresa y heredados
$carpeta = "C:\Empresa"
$acl_carpeta = Get-acl $carpeta
$acl_carpeta.SetAccessRuleProtection($true, $false)
$permisoadd = @('Administradores', 'FullControl', 'ContainerInherit, ObjectInherit', 'None', 'Allow')
$permisoadd2 = @('Usuarios del dominio', 'Read', 'ContainerInherit, ObjectInherit', 'None', 'Allow')
$ace= New-Object -TypeName System.Security.AccessControl.FileSystemAccessRule -ArgumentList $permisoadd
$ace2= New-Object -TypeName System.Security.AccessControl.FileSystemAccessRule -ArgumentList $permisoadd2

$acl_carpeta.AddAccessRule($ace)
$acl_carpeta.AddAccessRule($ace2)
$acl_carpeta | Set-Acl -Path $carpeta

#permisos departamentos
Import-Csv "C:\Users\Administrador\Downloads\departamentos.csv" -Delimiter ";" | foreach {
    New-Item -ItemType Directory -Path "C:\Empresa" -Name $_.departamento
    $nombre = $_.departamento
    $departamento = "C:\Empresa\$($nombre)"
    $acl_departamentos = Get-acl $departamento
    $permisoadd_departamento = @("$nombre", 'Modify', 'ContainerInherit, ObjectInherit', 'None', 'Allow')
    $ace3= New-Object -TypeName System.Security.AccessControl.FileSystemAccessRule -ArgumentList $permisoadd_departamento
    $acl_departamentos.SetAccessRule($ace3)
    $acl_departamentos | Set-Acl -Path $departamento
}
New-SmbShare -Path C:\Empresa -Name Empresa -FullAccess Administradores -ReadAccess "Usuarios del dominio"
