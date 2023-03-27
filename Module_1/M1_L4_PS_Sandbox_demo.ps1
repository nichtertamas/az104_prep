#Capturing input variable in a parameter
param([string]$resourceGroup)

#Ask for admin credential for the VM
$adminCredential = Get-Credential -Message "Enter a username and password for the VM administrator."

#Create 3 VM instance with different name
for ($i = 0; $i -lt 3; $i++) {
    $vmName = "Event" + $i
    Write-Host "Creating VM: " $vmName
    New-AzVm -ResourceGroupName $resourceGroup -Name $vmName -Credential $adminCredential -Image Canonical:0001-com-ubuntu-server-focal:20_04-lts:latest
}