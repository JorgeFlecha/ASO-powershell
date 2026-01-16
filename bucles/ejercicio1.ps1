$nombre = read-host "Dime tu nombre"
[int]$num = read-host "Dime un número"

for ($a =0; $a -lt $num; $a++){
    write-host "$nombre"
}