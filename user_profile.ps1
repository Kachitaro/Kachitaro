oh-my-posh init pwsh --config "$env:POSH_THEMES_PATH/zash.omp.json" | Invoke-Expression

$modulesToLoad = @('Terminal-Icons', 'PSFzf')
foreach ($module in $modulesToLoad) {
    if ((Get-Module -Name $module -ListAvailable) -and -not (Get-Module -Name $module)) {
        	Import-Module $module -ErrorAction SilentlyContinue
	}
}

Set-PSReadLineOption -EditMode Emacs
Set-PSReadLineOption -BellStyle None
Set-PSReadLineOption -PredictionSource History
Set-PSReadLineKeyHandler -Chord 'Ctrl+d' -Function DeleteChar

if (Get-Module -ListAvailable -Name PSFzf) {
    Set-PsFzfOption -PSReadlineChordProvider 'Ctrl+f' -PSReadlineChordReverseHistory 'Ctrl+r'
}

Set-Alias g git
Set-Alias vim nvim
Set-Alias grep findstr
Set-Alias tig 'C:\Program Files\Git\usr\bin\tig.exe'
Set-Alias less 'C:\Program Files\Git\usr\bin\less.exe'
