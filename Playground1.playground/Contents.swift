import UIKit

var text = "SWIFT"
let max = 10
var avarage: Double = 0.0

for letter in text
{
    print(letter)
}

var naam = (voornaam: "Aden", familienaam : "Vansevenant")
print(naam.voornaam)
print(naam.familienaam)

var reversedString: String? = nil
if let reversedString = reversedString
{
    print(reversedString)
}
else
{
    print("no result")
}

//deel 2

func reverseString(tekst: String) -> String
{
    return String(tekst.reversed())
}
print(reverseString(tekst: "Vives"))

func getUpperLowerCount(str: String) -> (uppercase: String, lowercase: String, charCount: Int)
{
    let uppercase = str.uppercased()
    let lowercase = str.lowercased()
    let charCount = str.count
    
    return (uppercase, lowercase, charCount)
}
var result = getUpperLowerCount(str: "iOS 26")

func divide(input: Int, input2: Int) -> Double
{
    return Double(input/input2)
}
//print(divide(input: 3, input2: 0))

func calculate(nummers: Double... ) -> (avg: Double, min: Double, max: Double, count: Int)?
{
    if nummers.isEmpty {
        return nil
    }
    else
    {
        let sum = nummers.reduce(0, +)
        let avg = sum/Double(nummers.count)
        let min = nummers.min()!
        let max = nummers.max()!
        let count = nummers.count
        
        return (avg, min, max, count)
    }
}

print(calculate(nummers: 10, 0, 5))
print(calculate(nummers: 4, 5, 6, -3))
print(calculate(nummers: -3))
print(calculate())

var x = 10.0
var y = 3

func increment( getal1: inout Double, getal2: inout Int)
{
     getal1 = getal1+1
    getal2 = getal2+1
}

increment(getal1: &x ,getal2: &y)
print(x,y)

// deel 3

enum StringConversionError : Error {
    case geenparameter
    case legeparameter
}

func getUpperLowerCount(str: String?) throws-> (uppercase: String, lowercase: String, charCount: Int)
{
    guard let newStr = str else {
        throw StringConversionError.geenparameter
    }
    if newStr.isEmpty {
        throw StringConversionError.legeparameter
    }
        let uppercase = newStr.uppercased()
        let lowercase = newStr.lowercased()
        let charCount = newStr.count
        
        return (uppercase, lowercase, charCount)
    }

do {
    //try print(getUpperLowerCount(str: nil))
    try print(getUpperLowerCount(str: ""))
    try print(getUpperLowerCount(str: "IOS 26"))
} catch StringConversionError.geenparameter {
            print("nil value parameter not allowed")
}catch StringConversionError.legeparameter {
                print("Empty String parameter not allowed")
}
