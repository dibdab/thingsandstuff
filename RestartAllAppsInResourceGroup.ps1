Get-AzWebApp -ResourceGroupName "resourcegroup" | ForEach-Object {
    Restart-AzFunctionApp -ResourceGroupName "resourcegroup" -Name $_.Name
    Restart-AzWebApp -ResourceGroupName "resourcegroup" -Name $_.Name
    # Restart-AzWebAppSlot -Slot "staging" -ResourceGroupName "resourcegroup"-Name $_.Name
}