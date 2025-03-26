# Variables
$resourceGroupName = "name"
$appServiceName = "name"
$newIpRestrictions = @(
    @{
        IpAddress = "00.00.00.00/0"
        Action = "Allow"
        Priority = 10
        Name = "Name"
        Description = "function"
    }
)

# Log in to Azure account (if not already logged in)
Connect-AzAccount 

# Iterate through each new IP restriction
foreach ($rule in $newIpRestrictions) {
    # Check if the IP address already exists
    if (-not $existingIpAddresses.ContainsKey($rule.IpAddress)) {
        # Add the new access restriction rule
        Add-AzWebAppAccessRestrictionRule -ResourceGroupName $resourceGroupName `
            -WebAppName $appServiceName `
            -Name $rule.Name `
            -Priority $rule.Priority `
            -Action $rule.Action `
            -IpAddress $rule.IpAddress `
            -Description $rule.Description
        A
        Write-Host "Added IP restriction for $($rule.IpAddress)"
    } else {
        Write-Host "IP restriction for $($rule.IpAddress) already exists. Skipping..."
    }
}

Write-Host "IP restrictions processed successfully!"