Invoke-Expression (& Starship init powershell)
Import-Module Terminal-Icons
Import-Module devtoolbox


#Alias
New-Alias -Name speedTest -Value "C:/tools/ookla-speedtest-1.2.0-win64/speedtest"
New-Alias -Name touch -Value New-Item
New-Alias -Name which -Value Get-Command
#functions
function update 
{
  iex "& { $(irm https://aka.ms/install-powershell.ps1) } -UseMSI"
}

function profile
{
  nvim $PROFILE
}

function dtf {
  git --git-dir="$HOME\.cfg" --work-tree="$HOME" @Args
}

function 2C {
  param (
      [Parameter()]
      [Alias('Temp')]
      [int]
      $Temperature
  )

  ($Temperature - 30) / 2
}
