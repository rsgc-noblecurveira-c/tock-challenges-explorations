import Cocoa

let inputTime = 2360

var inputTimeString = "\(inputTime)"

let specialHour = 24
let specialMinute = 60

var hour: [String] = []
var minute: [String] = []

let city = ["Ottawa", "Victoria", "Edmonton", "Winnipeg", "Toronto", "Halifax", "StJohns"]

var i = 0

// Seperate the time into minutes and hours
for digit in inputTimeString.characters
{
    if i < inputTimeString.characters.count/2
    {
        hour += [String(digit)]
    } else {
        minute += [String(digit)]
    }
    i++
}

// Print the time in each city
for (var j = 0; j < city.count; j)
{
    var hourOfCity = (Int(hour[0])!*10 + Int(hour[1])! - 4 + j)
    var minuteTensOfCity = Int(minute[0])!
    var minuteOnesOfCity = Int(minute[1])!
    if j == 6
    {
        minuteTensOfCity += 3
        hourOfCity--
    } else if j == 0
    {
        hourOfCity += 4
    }
    if Int(minute[0])! * 10 + Int(minute[1])! >= specialMinute
    {
        hourOfCity++
        minuteOnesOfCity = ((minuteTensOfCity * 10 + minuteOnesOfCity)%60)%10
        minuteTensOfCity = (minuteTensOfCity * 10 + minuteOnesOfCity)%60/10
    }
    if hourOfCity >= specialHour
    {
        if (minuteTensOfCity == 0 && hourOfCity%24 == 0)
        {
            print("\(minuteOnesOfCity) in \(city[j])")
            j++
        } else if (hourOfCity%24 == 0)
        {
            print("\(minuteTensOfCity)\(minuteOnesOfCity) in \(city[j])")
            j++
        } else {
            print("\(hourOfCity%24)\(minuteTensOfCity)\(minuteOnesOfCity) in \(city[j])")
            j++
        }
    } else {
        print("\(hourOfCity)\(minuteTensOfCity)\(minuteOnesOfCity) in \(city[j])")
        j++
    }
}