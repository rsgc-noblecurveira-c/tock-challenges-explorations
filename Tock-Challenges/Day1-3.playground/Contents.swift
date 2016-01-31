//: Playground - noun: a place where people can play

import Cocoa

let input = "joy"
var characterArray: [String] = []
var letters: [String] = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "y", "x", "z"]
var output: String = ""

for character in input.characters
{
    characterArray += [String(character)]
    
    if (String(character) != letters[0] && String(character) != letters[4] && String(character) != letters[8] && String(character) != letters[14] && String(character) != letters[20])
    {
        output += String(character)
    } else {
        output += String(character)
    }
}