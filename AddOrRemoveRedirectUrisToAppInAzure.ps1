#Install Az module if not installed
if (-not (Get-Module -Name Az -ListAvailable)) {
    Install-Module -Name Az -Force -Scope CurrentUser -AllowClobber
}

# Variables
$tenantId = ""
$clientId = ""
$clientSecret = ""
$objectId = ""
$newRedirectUri = "https://newredirecturl.com"

# Authenticate to Azure AD
$securePassword = ConvertTo-SecureString $clientSecret -AsPlainText -Force
$credential = New-Object System.Management.Automation.PSCredential($clientId, $securePassword)

# Connect to Azure AD
Connect-AzAccount -ServicePrincipal -Credential $credential -TenantId $tenantId

# Get the application
$application = Get-AzADApplication -ObjectId $objectId
# This next line is here to stop the module writing the AD account details in the middle of the output
$application.Id

Write-Host "-------"
Write-Host "Application Name:" $application.DisplayName
Write-Host "Current RedirectUri Array:"
$application.Web.RedirectUri

## Add redirect URI
#Write-Host "-------"
#$application.Web.RedirectUri = $application.Web.RedirectUri + $newRedirectUri
#Write-Host "New RedirectUri Array:"
#$application.Web.RedirectUri
#Write-Host "-------"
# Remove redirect URI
Write-Host "-------"
$application.Web.RedirectUri = $application.Web.RedirectUri | Where-Object { $_ -ne $newRedirectUri }
Write-Host "New RedirectUri Array:"
$application.Web.RedirectUri
Write-Host "-------"

# Update the application
Update-AzADApplication -ObjectId $application.Id -ReplyUrl $application.Web.RedirectUri

Write-Host "Azure AD application redirect URIs updated successfully."
