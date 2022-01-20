oh-my-posh --init --shell pwsh --config ~/M365Princess.omp.json | Invoke-Expression

function Get-GitStatus { & git status -sb $args }
New-Alias -Name s -Value Get-GitStatus -Force -Option AllScope
function Get-GitCommit { & git commit -vm $args }
New-Alias -Name c -Value Get-GitCommit -Force -Option AllScope
function Get-GitAdd { & git add --all $args }
New-Alias -Name ga -Value Get-GitAdd -Force -Option AllScope
function Get-GitTree { & git log --graph --oneline --decorate $args }
New-Alias -Name t -Value Get-GitTree -Force -Option AllScope
function Get-GitPush { & git push $args }
New-Alias -Name gps -Value Get-GitPush -Force -Option AllScope
function Get-GitPull { & git pull $args }
New-Alias -Name gpl -Value Get-GitPull -Force -Option AllScope
function Get-GitFetch { & git fetch $args }
New-Alias -Name f -Value Get-GitFetch -Force -Option AllScope
function Get-GitCheckout { & git checkout $args }
New-Alias -Name co -Value Get-GitCheckout -Force -Option AllScope
function Get-GitBranch { & git branch $args }
New-Alias -Name b -Value Get-GitBranch -Force -Option AllScope
function Get-GitRemote { & git remote -v $args }
New-Alias -Name r -Value Get-GitRemote -Force -Option AllScope

$githelp = @"
git status		s
git  commit		c
git add			ga
git log			t
git push		gps
git pull		gpl
git fetch		f
git checkout		co
git branch		b
git remote -v		r
"@

function Get-GitShortcuts { Write-Host $githelp }
New-Alias -Name gh -Value Get-GitShortcuts -Force -Option AllScope
