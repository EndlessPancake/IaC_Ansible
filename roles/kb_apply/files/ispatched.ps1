Function Check_KB_Installed {
  Param (
    [string]$kbname
  )
  if (0 -eq $args.Length) {
    Write-Host "usage: ispatched.ps1 KB12345678"
    exit
}
Get-HotFix -Id $args[0]
}

Function main {
  Check_KB_Installed
  if ( $? ) {
    # true
    Write-Host "Installed."
  }
  else {
    Write-Host "Not Installed."
  }
}
main
