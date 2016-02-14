//: Playground - noun: a place where people can play

import Cocoa

let input = "carlos"
var characterArray: [String] = []
var letters = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"]
var output = ""
var distances: [String:Int] = [:]
var vowelValue: [Int] = []
var minDistance = 26

for character in input.characters
{
    // adds all of the input characters to an array
    characterArray += [String(character)]
}

// runs for each character in the input
for character in input.characters
{
    // the first letter always goes first
    output += String(character)
    
    if (String(character) != letters[0] && String(character) != letters[4] && String(character) != letters[8] && String(character) != letters[14] && String(character) != letters[20])
    {
        for i in 0...25
        {
            if (String(character) == letters[i])
            {
                vowelValue = [0, 4, 8, 14, 20]
                
                for j in 0...4
                {
                    vowelValue[j] = i - vowelValue[j]
                }
                
                if (abs(vowelValue[0]) < abs(vowelValue[1]) && abs(vowelValue[0]) < abs(vowelValue[2]) && abs(vowelValue[0]) < abs(vowelValue[3]) && abs(vowelValue[0]) < abs(vowelValue[4]))
                {
                    output += "a"
                    if i+1 != 0 && i+1 != 4 && i+1 != 8 && i+1 != 14 && i+1 != 20
                    {
                        output += letters[i+1]
                    } else {
                        output += letters[i+2]
                    }
                } else if (abs(vowelValue[1]) < abs(vowelValue[0]) && abs(vowelValue[1]) < abs(vowelValue[2]) && abs(vowelValue[1]) < abs(vowelValue[3]) && abs(vowelValue[1]) < abs(vowelValue[4]))
                {
                    output += "e"
                    if i+1 != 0 && i+1 != 4 && i+1 != 8 && i+1 != 14 && i+1 != 20
                    {
                        output += letters[i+1]
                    } else {
                        output += letters[i+2]
                    }
                } else if (abs(vowelValue[2]) < abs(vowelValue[0]) && abs(vowelValue[2]) < abs(vowelValue[1]) && abs(vowelValue[2]) < abs(vowelValue[3]) && abs(vowelValue[2]) < abs(vowelValue[4]))
                {
                    output += "i"
                    if i+1 != 0 && i+1 != 4 && i+1 != 8 && i+1 != 14 && i+1 != 20
                    {
                        output += letters[i+1]
                    } else {
                        output += letters[i+2]
                    }
                } else if (abs(vowelValue[3]) < abs(vowelValue[0]) && abs(vowelValue[3]) < abs(vowelValue[1]) && abs(vowelValue[3]) < abs(vowelValue[2]) && abs(vowelValue[3]) < abs(vowelValue[4]))
                {
                    output += "o"
                    if i+1 != 0 && i+1 != 4 && i+1 != 8 && i+1 != 14 && i+1 != 20
                    {
                        output += letters[i+1]
                    } else {
                        output += letters[i+2]
                    }
                } else if (abs(vowelValue[4]) < abs(vowelValue[0]) && abs(vowelValue[4]) < abs(vowelValue[1]) && abs(vowelValue[4]) < abs(vowelValue[2]) && abs(vowelValue[4]) < abs(vowelValue[3]))
                {
                    output += "u"
                    if i+1 != 0 && i+1 != 4 && i+1 != 8 && i+1 != 14 && i+1 != 20
                    {
                        output += letters[i+1]
                    } else {
                        output += letters[i+2]
                    }
                } else if (abs(vowelValue[0]) == abs(vowelValue[1]) || abs(vowelValue[0]) == abs(vowelValue[2]) || abs(vowelValue[0]) == abs(vowelValue[3]) || abs(vowelValue[0]) == abs(vowelValue[4]))
                {
                    output += "a"
                    if i+1 != 0 && i+1 != 4 && i+1 != 8 && i+1 != 14 && i+1 != 20
                    {
                        output += letters[i+1]
                    } else {
                        output += letters[i+2]
                    }
                } else if (abs(vowelValue[1]) == abs(vowelValue[0]) || abs(vowelValue[1]) == abs(vowelValue[2]) || abs(vowelValue[1]) == abs(vowelValue[3]) || abs(vowelValue[1]) == abs(vowelValue[4]))
                {
                    output += "e"
                    if i+1 != 0 && i+1 != 4 && i+1 != 8 && i+1 != 14 && i+1 != 20
                    {
                        output += letters[i+1]
                    } else {
                        output += letters[i+2]
                    }
                } else if (abs(vowelValue[2]) == abs(vowelValue[0]) || abs(vowelValue[2]) == abs(vowelValue[1]) || abs(vowelValue[2]) == abs(vowelValue[3]) || abs(vowelValue[2]) == abs(vowelValue[4]))
                {
                    output += "i"
                    if i+1 != 0 && i+1 != 4 && i+1 != 8 && i+1 != 14 && i+1 != 20
                    {
                        output += letters[i+1]
                    } else {
                        output += letters[i+2]
                    }
                } else if (abs(vowelValue[3]) == abs(vowelValue[0]) || abs(vowelValue[3]) == abs(vowelValue[1]) || abs(vowelValue[3]) == abs(vowelValue[2]) || abs(vowelValue[3]) == abs(vowelValue[4]))
                {
                    output += "o"
                    if i+1 != 0 && i+1 != 4 && i+1 != 8 && i+1 != 14 && i+1 != 20
                    {
                        output += letters[i+1]
                    } else {
                        output += letters[i+2]
                    }
                } else if (abs(vowelValue[4]) == abs(vowelValue[0]) || abs(vowelValue[4]) == abs(vowelValue[1]) || abs(vowelValue[4]) == abs(vowelValue[2]) || abs(vowelValue[4]) == abs(vowelValue[3]))
                {
                    output += "u"
                    if i+1 != 0 && i+1 != 4 && i+1 != 8 && i+1 != 14 && i+1 != 20
                    {
                        output += letters[i+1]
                    } else {
                        output += letters[i+2]
                    }
                }
            }
        }
    }
}