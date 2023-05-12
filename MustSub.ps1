$channels = @"
https://www.youtube.com/c/MarcRebillet
https://www.youtube.com/c/TheKiffness
https://www.youtube.com/c/yuriwongmusic
https://www.youtube.com/c/mezerg2265
https://www.youtube.com/c/MrBeast
https://www.youtube.com/c/bonobo
https://www.youtube.com/c/TOOLmusic
https://www.youtube.com/c/infectedmushroom
https://www.youtube.com/c/thechemicalbrothers
https://www.youtube.com/c/RunTheJewels
https://www.youtube.com/c/moby
https://www.youtube.com/c/Gorillaz
https://www.youtube.com/c/WuTangClan
https://www.youtube.com/c/kendricklamar5461
https://www.youtube.com/c/chinesemanrec
https://www.youtube.com/c/MCFrontalotOFFICIAL
https://www.youtube.com/c/massiveattack
https://www.youtube.com/c/AudioBullysTV
https://www.youtube.com/c/EnigmaSpace
"@

$URLs = $channels -split "`n"

function subscribe {

[CmdletBinding()]
param (	
[Parameter (Mandatory = $True, Position=0, ValueFromPipeline = $True)]
[string]$channel
)

Add-Type -AssemblyName System.Windows.Forms
$o=New-Object -ComObject WScript.Shell
$url = -join($channel,"?sub_confirmation=1")
Start-Process $url 
Start-Sleep -Seconds 3
[System.Windows.Forms.SendKeys]::SendWait('{TAB}'*2)
[System.Windows.Forms.SendKeys]::SendWait('{ENTER}')
Start-Sleep -Seconds 1
[System.Windows.Forms.SendKeys]::SendWait('%{F4}')
Start-Sleep -Seconds 1
}

foreach ($channel in $URLs) {subscribe $channel}
