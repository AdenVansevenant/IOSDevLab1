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
print(divide(input: 3, input2: 0))

func calculate(nummers: Double ) -> Double
{
    
}
