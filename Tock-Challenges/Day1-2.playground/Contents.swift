//: Playground - noun: a place where people can play

import Cocoa

let input: String = "How are you :-) doing :-( today :-)?"
var characters: [String] = []

let delimiters = NSCharacterSet(charactersInString: ", \n")
let words = input.componentsSeparatedByCharactersInSet(delimiters)

var happyCount = 0
var sadCount = 0
var wordCount = 0
let happyFace = ":-)"

//for (var i = 0; i < words.count; i++)
//{
//    if (String(words[i]) == happyFace)
//    {
//        happyCount++
//    } else if (String(words[i]) == "today")
//    {
//        sadCount++
//    } else {
//        wordCount++
//    }
//}

for character in input.characters
{
characters += [String(character)]
    
    if character == ":"
    {
        print("i found it")
    }
}