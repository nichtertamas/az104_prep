#Import the Azure PowerShell Module
Import-Module -Name AZ

#Connect to the AZ Account
Connect-AzAccount

#Define Variables for the new VM
$vmName = "VM1-Sales"
$resourceGroup = "Sales"

#Create Azure credentials
$adminCredentials = Get-Credential -Message "Enter username "