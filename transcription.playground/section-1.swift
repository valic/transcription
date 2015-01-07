// Playground - noun: a place where people can play

import Cocoa

let ukraineLang = [
    "а":"a",
    "б":"b",
    "в":"v",
    "г":"h",
    "ґ":"g",
    "д":"d",
    "е":"e",
    "є":"ie",
    "ж":"zh",
    "з":"z",
    "и":"y",
    "і":"i",
    "ї":"i",
    "й":"i",
    "к":"k",
    "л":"l",
    "м":"m",
    "н":"n",
    "о":"o",
    "п":"p",
    "р":"r",
    "с":"s",
    "т":"t",
    "у":"u",
    "ф":"f",
    "х":"kh",
    "ц":"ts",
    "ч":"ch",
    "ш":"sh",
    "щ":"shch",
    "ь":"",
    "ю":"iu",
    "я":"ia",
    "А":"A",
    "Б":"B",
    "В":"V",
    "Г":"H",
    "Ґ":"G",
    "Д":"D",
    "Е":"E",
    "Є":"IE",
    "Ж":"Zh",
    "З":"Z",
    "И":"Y",
    "І":"I",
    "Ї":"I",
    "Й":"I",
    "К":"K",
    "Л":"L",
    "М":"M",
    "Н":"N",
    "О":"O",
    "П":"P",
    "Р":"R",
    "С":"S",
    "Т":"T",
    "У":"U",
    "Ф":"F",
    "Х":"Kh",
    "Ц":"Ts",
    "Ч":"Ch",
    "Ш":"Sh",
    "Щ":"Shch",
    "Ь":"",
    "Ю":"IU",
    "Я":"IA",
    "'":""]

ukraineLang.count

// Если буква в начале слова
let ukraineLangLowerCase:Dictionary =
[
    "є":"ye",
    "Є":"Ye",
    "ї":"yi",
    "Ї":"Yi",
    "й":"y",
    "Й":"Y",
    "ю":"yu",
    "Ю":"Yu",
    "я":"ya",
    "Я":"Ya"
]

var spaceCharacter = true
var stringTranscription:String = ""
var zgh:String = ""
for chaster in "Буквосполучення зг відтворюється латиницею як zgh(наприклад,  Згорани - Zghorany, Розгон - Rozghon) навідміну від zh-  відповідника  української  літери "
{
    if chaster == "з" || chaster == "З" || chaster == "г" || chaster == "Г"
    { if zgh == "з" || zgh == "З"
        {
            if chaster == "з" || chaster == "З" { stringTranscription += ukraineLang[String(chaster)]! }
            else
            {
            zgh += String(chaster)
            stringTranscription +=  "gh"
            zgh = ""
            }
        }
    else { zgh += String(chaster); stringTranscription += ukraineLang[String(chaster)]! }
    }
    else
    {
        zgh = ""
    if spaceCharacter == true {
    
        if let character = ukraineLangLowerCase[String(chaster)] {stringTranscription += character }
        else
        {
            if  var findIndex = ukraineLang[String(chaster)] {stringTranscription += findIndex}
            else
            {stringTranscription += String(chaster) }
        
            
        }
    
    }
    else
    {
        if  var findIndex = ukraineLang[String(chaster)] {stringTranscription += findIndex}
        else
        {stringTranscription += String(chaster) }    }
    
    if chaster == " " { spaceCharacter = true} else { spaceCharacter = false }
}
}
stringTranscription
