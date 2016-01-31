//: Playground - noun: a place where people can play

import Cocoa

let input = "joy"
var characterArray: [String] = []
var letters = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "y", "x", "z"]
var output = ""
var distances: [String:Int] = [:]
var distanceFromVowel = []
var minDistance = 26
var aArray = 0
var eArray = 4
var iArray = 8
var oArray = 14
var uArray = 20
var alphabetArrayTotal = 25

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
    
    
    if (String(character) != letters[aArray] && String(character) != letters[eArray] && String(character) != letters[iArray] && String(character) != letters[oArray] && String(character) != letters[uArray])
    {
        for (var i:Int = 0; i < alphabetArrayTotal; i++)
        {
            if (String(character) == letters[i])
            {
                distances["u"] = abs(i - 20)
                distances["o"] = abs(i - 14)
                distances["i"] = abs(i - 8)
                distances["e"] = abs(i - 4)
                distances["a"] = abs(i - 0)
                for (key, value) in distances
                {
                    minDistance = min(minDistance, value)
                }
                minDistance = 26
            }
        }
    }
}
output