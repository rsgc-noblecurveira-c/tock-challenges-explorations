//: Playground - noun: a place where people can play

import Cocoa

var inputThing: [String] = []
var total = 0
var inputNumber = "3210423897234"


for character in inputNumber.unicodeScalars
{
    inputThing += [String(character)]
}

inputThing

for (var i = 0; i < 13; i++)
{
    if(i%2 == 0)
    {
        inputThing[i] = String(Int(inputThing[i])! * 1)
    } else {
        inputThing[i] = String(Int(inputThing[i])! * 3)
    }
    total += Int(inputThing[i])!
}

print(total)
