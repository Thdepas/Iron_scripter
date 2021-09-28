$path = Read-Host "Please enter the path to de directory "

function GetFilesInfos() {

    [alias("GFI")]
    Param(
        [Parameter(Mandatory = $true, ValueFromPipeline = $true)]
        [string] $path     
    )
    If (Test-Path $path ) { 
    
        "the path exist" 

        $Measure = gci -Path $path -Recurse -File | Measure-Object -Property Length -sum -Average
        $hidden = gci -Path $path -Recurse -File -Force | Measure-Object -Property Length 
        
        Do {
            $Count++
            Write-Progress -Activity "Scanning files" -Status "Running..." -PercentComplete $($count * 10) -CurrentOperation "processing ... $($count)"
            Start-Sleep -Seconds 1
        }until($count -eq $Measure.count)
        $count = $null

        [pscustomobject]@{
            ComputerName = $env:Computername 
            Files        = $Measure.Count
            HiddenFiles  = $($hidden.Count - $Measure.Count)
            AverageSize  = $Measure.Average 
            SizesinGB    = $Measure.Sum /1GB
            Date         = Get-Date
        }
    } 
    Else { "the path doesn't exist" }
}

If ($path){ GFI $path } else { "No path no pain (눈_눈) " }
