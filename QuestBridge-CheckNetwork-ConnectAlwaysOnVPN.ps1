#Connect to VPN if not already on domain network
Start-Sleep -Seconds 5
Set-ExecutionPolicy RemoteSigned -Force
try
{
  # Check if computer is connected to domain network
  [void]::([System.DirectoryServices.ActiveDirectory.Domain]::GetComputerDomain())

  Write-Host 'Domain Network'
}
catch
{
    rasdial.exe "QuestBridge-AOVPN"
}
