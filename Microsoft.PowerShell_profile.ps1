Set-PSReadLineOption -EditMode Emacs


Function EditInitVim { nvim "C:\Users\iurlezaga\AppData\Local\nvim\init.vim"}
Function EditRc { nvim "C:\Users\iurlezaga\Documents\WindowsPowershell\Microsoft.PowerShell_profile.ps1"}

Set-Alias -Name evim -Value EditInitVim 
Set-Alias -Name erc -Value EditRc 


Set-Alias ll ls 
Set-Alias vim nvim

function gst(){git status}
function gch(){git cherry-pick }
function gpull(){git pull}
function gpush(){git push}
function gcam(){git commit -am}
function gcm(){git commit -m}
function gout(){git checkout}
function grst(){git reset --hard}
function gdiff(){git diff }
function gdifft(){git difftool}
function gstash(){git stash push -m}
function gstashl(){git stash list}
function gstasha(){git stash apply}
function gclean(){git clean -d -f}
function gmerge(){git mergetool}
function gdbranches(){git branch | grep -v master | xargs git branch -d }

#Misc
function obtainToken(){
    $headers = @{}
    $headers.Add("Accept", "*/*")
    # $headers.Add("User-Agent", "Thunder Client (https://www.thunderclient.com)")
    $headers.Add("Content-Type", "application/x-www-form-urlencoded")

    $reqUrl = 'https://pc234.sisteplant.com:4437/oauth2/token'
    $body = 'username=CAPTOR&grant_type=password&password=CAPTOR'

    $response = Invoke-RestMethod -Uri $reqUrl -Method Get -Headers $headers -ContentType 'application/x-www-form-urlencoded' -Body $body
    $response | ConvertTo-Json
}

oh-my-posh init pwsh --config C:\Users\iurlezaga\AppData\Local\Programs\oh-my-posh\themes/emodipt.omp.json | Invoke-Expression

