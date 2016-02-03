//: Playground - noun: a place where people can play

import Cocoa

var inputThing: [Int] = [9, 7, 8, 0, 9, 2, 1, 4, 1, 8]
var digit11 = 0
var digit12 = 5
var digit13 = 2
var total = 0


inputThing += [digit11]
inputThing += [digit12]
inputThing += [digit13]

for (var i = 0; i < 13; i++)
{
    if(i%2 == 0)
    {
        inputThing[i] = inputThing[i] * 1
    } else {
        inputThing[i] = inputThing[i] * 3
    }
    total += Int(inputThing[i])
}

print(total)
