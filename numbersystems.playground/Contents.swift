import Cocoa

var str = "Hello, playground"

//Find the digits that represent 27 in binary
//We know this is 11011 in base 2

//Use the remainder operator to get the first binary digit
//The remainder operator is %
27%2

//Find the decimal value left to convert
//The division operator is /
27/2

//Get next binary digit
13%2
//Get to value to convert
13/2

//Next digit
6%2
//Value left
6/2

//Next binary digits
3%2
//Decimal value left
3/2

//last binary digits
1%2
//Done- because decimal value left is 0
1/2

//Find the digits that represent 988 in binary
//We know this is 11 1101 1100 in base 2

988%2
988/2

494%2
494/2

247%2
247/2

123%2
123/2

61%2
61/2

30%2
30/2

15%2
15/2

7%2
7/2

3%2
3/2

1%2
1/2

//Let's convert the base 10 value of 76 to base 2

76%2
76/2

38%2
38/2

19%2
19/2

9%2
9/2

4%2
4/2

2%2
2/2

1%2
1/2

//Enumeration
//
//An enumeration simply lists possibility
//The : Int... that define the type of the row value associated with a case
/*
 This is another example of abstraction
 -hide complexity
 -make the call site easy to read
 e.g: getRepresentaion (of: 17, inBase: 2)
 */


enum NumberSystemBase: Int {
    case binary = 2
    case octal = 8
    case hexadecimal = 16
}


//Functions
//
//Function are a way to group relate behaviours


//Get us the binary representation of a value
func getaBinaryRepresentation (of valueToConvert: Int, inBase Base: NumberSystemBase)-> String {
    
    var decimalValueLeftToConvert = valueToConvert
    var Representation = ""


    //The absraction we will use is a loop
    //One end condition is that the decimalValueToConvert is equal to zero
    //SO long as the condition is true, the block of codesurround by the {  } Brackets wil be rund repeatly
    while decimalValueLeftToConvert > 0 {
     
        let nextDigit = decimalValueLeftToConvert % Base.rawValue
      
        if Base == .hexadecimal {
        //carefully set the next digit, using ABCDEF
        //Switch statement evaluate some value
            switch nextDigit {
            case 0...9:
                Representation = String (nextDigit) + Representation
            case 10:
                Representation = "A" + Representation
            case 11:
                Representation = "B" + Representation
            case 12:
                Representation = "C" + Representation
            case 13:
                Representation = "D" + Representation
            case 14:
                Representation = "E" + Representation
            case 15:
                Representation = "F" + Representation

            default:
                break
            }
        } else {
              Representation = String (nextDigit) + Representation
        }
            
        
        decimalValueLeftToConvert = decimalValueLeftToConvert / Base.rawValue
    }

    return Representation
}

getaBinaryRepresentation(of: 67, inBase: .binary)
getaBinaryRepresentation(of: 190, inBase: .hexadecimal)
getaBinaryRepresentation(of: 298, inBase: .octal)

/* Binary to deciaml
 Base 2 to base 10
*/


import Foundation

func Number (value:String) -> Double{
    var exponent = 0.0
    let base = 16.0
    var decimalEquivalent = 0.0
    
    for character in value.reversed() {
        switch character{
        case "A":
            decimalEquivalent += 10 * pow(base, exponent)
        case "B":
            decimalEquivalent += 11 * pow(base, exponent)
        case "C":
            decimalEquivalent += 12 * pow(base, exponent)
        case "D":
            decimalEquivalent += 13 * pow(base, exponent)
        case "E":
            decimalEquivalent += 14 * pow(base, exponent)
        case "F":
            decimalEquivalent += 15 * pow(base, exponent)
        case "G":
            decimalEquivalent += 16 * pow(base, exponent)
        default:
            let digit = Double(String(character))!
            decimalEquivalent += digit * pow(base, exponent)
        }
        exponent += 1
    }
    return decimalEquivalent
}

let value = "2A5"

print(Number (value: value))

