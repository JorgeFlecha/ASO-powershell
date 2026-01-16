[int]$edad = read-host "Dime tu edad"

for ($a =1; $a -le $edad; $a++){
    write-host "Has cumplido: $a"
}