#E:\AMPDatastore\Instances\Subsistence\Subsistence\1362640\Binaries\Win32

function Check_log
{
param (
        $log,
        $user_count
    )

#$user_count = 0

if ($log -ne $null)
{

$logs=$log.split("`n")

    foreach($line in $logs){

        switch -Regex ($line)
        {
            '^(.*?(\bOpen TheWorld\b)[^$]*)$'
            {
            $user_count = $user_count +1
            }
            '^(.*?(\bClose IpNetDriverSteamworks_0\b)[^$]*)$'
            {
            $user_count = $user_count -1
			if ($user_count -lt 0) {$user_count = 0}
            }

        }


    }
}
return $user_count
}

try
{
    Start-Transcript -Path ".\UDK_mgmt.log"


    Remove-Job MyJob -ErrorAction SilentlyContinue

    Start-job -Name MyJob -ScriptBlock {set-location $input; & '.\UDK.com' server coldmap1?steamsockets} -InputObject "$(Get-Location)"

    #$now =  
    $is_startup = $true
    $count =0

    do
    {
        #Receive-Job -name MyJob | Tee-Object -OutVariable
        $log = Receive-Job -name MyJob

        $log

        #Count user connected
        $oldcount = $count

        $count = Check_log $log $count

        if ($count -ne $oldcount){write-host "There is $count players"}

        if (($is_startup -eq $true) -and ($count -gt 0)) {$is_startup = $false}
        

    }until(($is_startup -eq $false) -and ($count -eq 0)) #until(Test-KeyPress -Keys ShiftKey,D )
}
catch
{
 Write-Host $_
}
finally
{
    Stop-Job MyJob
    Remove-Job MyJob

    #Get-Process -Name 'UDK' | Stop-Process -Force


    Stop-Transcript
}