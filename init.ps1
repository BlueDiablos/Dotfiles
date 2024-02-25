##creates symlinks between this repos config directories and the ones specified by the user (Assumes you already have neovim and alacritty installed)
$NeovimFolder = Read-Host "Please enter the neovim symlink location..."
$AlacrittyFolder = Read-Host "Please enter the alacritty symlink location..."


Write-Output 'Creating sym links for neovim...'
New-Item -Path $NeovimFolder -ItemType SymbolicLink -Value './nvim/'

Write-Output 'Creating sym links for allacritty...'
New-Item -Path $AlacrittyFolder -ItemType SymbolicLink -Value './alacritty/'
