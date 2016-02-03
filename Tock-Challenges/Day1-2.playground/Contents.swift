//: Playground - noun: a place where people can play

import Cocoa

let input: String = "This:-(is str:-(:-(ange te:-)xt.:^)?"
var characters: [String] = []

var happyCount = 0
var sadCount = 0

// Creat an array of all characters
for character in input.characters
{
    characters += [String(character)]
}

// Find all the happy and sad faces
for (var i = 0; i < input.characters.count; i++)
{
    if characters[i] == ":"
    {
        if characters[i+1] == "-"
        {
            if characters[i+2] == "("
            {
                sadCount += 1
            }
            
            if characters[i+2] == ")"
            {
                happyCount += 1
            }
            
        }
    }
}

//Print the output message
if (sadCount < happyCount)
{
    print("happy")
} else if (sadCount > happyCount)
{
    print("sad")
} else {
    print("none")
}
