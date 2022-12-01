# aoc-powershell-puzzle
Advent of Code - PowerShell puzzle input grabber

Grabs your AOC puzzle input for the day, uses a web request and your session ID to pull down your puzzle input from the AOC website

### Examples

`Get-AocInput -day 1`  

Gets the puzzle input for day one default year 2022

`Get-AocInput -day 3 -year 2020` 

Gets the puzzle input for day three for AoC year 2020

**Note**
>Make sure you update your SESSION ID in the the code  
The SESSION ID can be found here in chrome developer tools
![image](https://user-images.githubusercontent.com/2339111/205177469-63a15eeb-6b37-45c2-9c6a-838852891c88.png)
