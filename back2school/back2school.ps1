Write-Host "Pythagorean Theorem" -ForegroundColor white -BackgroundColor DarkMagenta

$Length1 = Read-Host "Please enter side lenght "
$Length2 = Read-Host "Please enter side lenght"
function Triangle ([int]$Length1, [int]$Length2) {
    
    if ($Length1 -lt 1) { $Length1 = 1 } 
    if ($Length2 -lt 1) { $Length2 = 1 }
    
    $length3 = ([math]::Sqrt(([math]::Pow($Length1, 2)) + (([math]::Pow($Length2, 2)))))
    write-host "The missing length of the triangle is $length3" -ForegroundColor white -BackgroundColor blue
}

Triangle $Length1 $Length2

Write-Host "********************************************************" -ForegroundColor white -BackgroundColor blue
Write-Host "The Treaty of Archimedes" -ForegroundColor white -BackgroundColor DarkMagenta

$Diameter = Read-Host "Please enter the diameter of the circle "
function CircleDiameter ([int]$Diameter) {

    if ($Diameter -lt 1) { $Diameter = 1 } 
    
    $CircleArea = (([math]::PI * ([math]::Pow($Diameter, 2))) / 4)
    Write-Host "The area of the circler is $circleArea" -ForegroundColor white -BackgroundColor blue
}

CircleDiameter $Diameter

Write-Host "********************************************************" -ForegroundColor white -BackgroundColor blue

$Diameter2 = Read-Host "Please enter the diameter of the circle "

function VolumnOfSphere ([int]$Diameter2) {

    if ($Diameter2 -lt 1) { $Diameter2 = 1 } 

    $Volume = (([math]::Pow(5, 3)) * ([math]::PI * 1.1))
    Write-host "The volumne of the sphere is $Volume" -ForegroundColor white -BackgroundColor blue
}

VolumnOfSphere $Diameter2

Write-Host "********************************************************" -ForegroundColor white -BackgroundColor blue
$Diameter3 = Read-Host "Please enter the diameter of the circle  "
$Height = Read-Host "Please enter the height of the cylinder "

function VolumnOfCylinder ([int]$Diameter3, [int]$Height) {

    if ($Diameter3 -lt 1) { $Diameter3 = 1 } 
    if ($Height -lt 1) { $Height = 1 } 

    $volume = (([math]::PI * ([math]::Pow($Diameter3, 2))) * $Height)
    Write-host "The volumne of the cylinder is $Volume" -ForegroundColor white -BackgroundColor blue
}

VolumnOfCylinder $Diameter3 $Height

Write-Host "********************************************************" -ForegroundColor white -BackgroundColor blue

Write-Host "Factorize A Given Number" -ForegroundColor white -BackgroundColor DarkMagenta

$Integer = Read-Host "Please enter an integer"  
function Factorial([int]$Integer) {
    if ($Integer -lt 0) { $result = 0 }

    elseif ($Integer -le 1) { $result = 1 }

    else {
        $result = $Integer * (Factorial($Integer - 1))
    }

    return $result
}

Factorial $Integer

Write-Host "********************************************************" -ForegroundColor white -BackgroundColor blue
