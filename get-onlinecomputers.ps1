$Computers = "localhost","","test"
 
$Onlinecomputers = New-Object System.Collections.ArrayList
 
$Offlinecomputers = New-Object System.Collections.ArrayList
 foreach ($computer in $computers)
 {
 If (Test-Connection $Computer -Count 1 -Delay 1 -Quiet -ErrorAction silentlycontinue)
 
 {
 $Onlinecomputers.add($Computer) | out-null
 }
 
 else {
 $Offlinecomputers.add($Computer) | Out-Null
 }
 }
 $onlinecomputers | Add-Member -MemberType Noteproperty -Name 'computer' -Value "$computer"
 $offlinecomputers | add-member -membertype Noteproperty -name 'computer' -value "$computer"

$onlinecomputers
$offlinecomputers
