<#
.SYNOPSIS
    Grabs your AOC puzzle input for the day
.DESCRIPTION
    Uses a web request and your session ID to pull down your puzzle input from the AOC website
.NOTES
    PLEASE be sure to use your own SESSION ID

.EXAMPLE
    Get-AocInput -day 1
    Gets the puzzle input for day one default year 2022
    
    Get-AocInput -day 3 -year 2020
    Gets the puzzle input for day three for AoC year 2020
#>

function Get-AocInput 
{
    Param(
        [string]
        [Parameter(Mandatory, Position=0)]
        $day,
        [string]
        [Parameter( Position=1)]
        $year = "2022"

    )
 
    $SESSIONID = "<YOUR SESSION ID HERE>"
    $session = New-Object Microsoft.PowerShell.Commands.WebRequestSession
    $session.UserAgent = "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36"
    $session.Cookies.Add((New-Object System.Net.Cookie("session", $SESSIONID, "/", ".adventofcode.com")))
    $Response = Invoke-WebRequest -UseBasicParsing -Uri "https://adventofcode.com/$year/day/$day/input" -WebSession $session 
    
    Return ($Response.Content)
}

