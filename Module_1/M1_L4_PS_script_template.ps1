#Import the Azure PowerShell Module
Import-Module -Name AZ

#Connect to the AZ Account
Connect-AzAccount

#Define Variables for the new VM
$vmName = "VM1-Sales"
$resourceGroup = "Sales"

#Create Azure credentials
$adminCredentials = Get-Credential -Message "Enter username and PW"

#Create new VM
New-AzVM -ResourceGroupName $resourceGroup -Name $vmName -Credential $adminCredentials -Image UbuntuLTS

#Get the new VM created
Get-AzVM -ResourceGroupName $resourceGroup -Name $vmName | Format-Table