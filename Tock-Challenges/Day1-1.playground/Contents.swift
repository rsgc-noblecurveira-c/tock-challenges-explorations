//: Playground - noun: a place where people can play

import Cocoa

let inputMonth: Int = 2
let inputDay: Int = 18

let specialMonth: Int = 2
let specialDay: Int = 18

if (inputMonth == specialMonth)
{
    if (inputDay == specialDay)
    {
        print("Special")
    } else if (inputDay < specialDay)
    {
        print("Before")
    } else
    {
        print("After")
    }
} else if (inputMonth < specialMonth)
{
    print("Before")
} else
{
    print("After")
}
