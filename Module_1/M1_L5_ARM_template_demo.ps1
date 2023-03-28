#Change active subscription
$context = Get-AzSubscription -SubscriptionId 39aed68e-ad5b-408c-9875-51852b340fdf
Set-AzContext $context

#Set default resource group
Set-AzDefault -ResourceGroupName "Sales"

#Deploy the JSON template
$templateFile="azuredeploy.json"
$today=Get-Date -Format "MM-dd-yyyy"
$deploymentName="addSkuParameter"+"$today"
New-AzResourceGroupDeployment `
  -Name $deploymentName `
  -TemplateFile $templateFile
  -storageSKU Standard_GRS

