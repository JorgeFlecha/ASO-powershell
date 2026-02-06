New-Item -ItemType Directory -Path "C:\" -Name "Empresa_users"
$empresa = "C:\Empresa_users"
$acl_carpeta = Get-acl $empresa
$acl_carpeta.SetAccessRuleProtection($true, $false)

$permisoadd = @('Administradores', 'FullControl', 'ContainerInherit, ObjectInherit', 'None', 'Allow')
$ace= New-Object -TypeName System.Security.AccessControl.FileSystemAccessRule -ArgumentList $permisoadd
$acl_carpeta.AddAccessRule($ace)

$permisoadd3 = @('Usuarios del dominio', 'ReadAndExecute', 'ContainerInherit, ObjectInherit', 'None', 'Allow')
$ace3= New-Object -TypeName System.Security.AccessControl.FileSystemAccessRule -ArgumentList $permisoadd
$acl_carpeta.AddAccessRule($ace3)
 
$acl_carpeta | Set-Acl -Path $empresa

Import-Csv "C:\Users\Administrador\Downloads\empleados.csv" -Delimiter ";" | Foreach-object {
    New-Item -ItemType Directory -Path "C:\Empresa_users" -Name "$($_.nombre).$($_.apellido)"
    $carpeta = "C:\Empresa_users\$($_.nombre).$($_.apellido)"
    $acl_carpeta2 = Get-acl -Path $carpeta
    $permisoadd2 = @("$($_.nombre).$($_.apellido)", 'FullControl', 'ContainerInherit, ObjectInherit', 'None', 'Allow')
    $ace2= New-Object -TypeName System.Security.AccessControl.FileSystemAccessRule -ArgumentList $permisoadd2
    
    $acl_carpeta2.AddAccessRule($ace2)
    $acl_carpeta2 | Set-Acl -Path $carpeta
}

New-SmbShare -Path "C:\Empresa_users" -Name "Empresa_users$" -FullAccess "Administradores" -ChangeAccess "Usuarios del dominio"

Import-Csv "C:\Users\Administrador\Downloads\empleados.csv" -Delimiter ";" | Foreach-object {
    Set-ADUser -Identity "$($_.nombre).$($_.apellido)" -ScriptPath "carpetas.bat" -HomeDrive "Z:" -HomeDirectory "\\empresa-jorge\Empresa_users$\$($_.nombre).$($_.apellido)"
}
