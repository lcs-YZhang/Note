import Cocoa

var str = "Hello, playground"
let firstScore1 = 12
let secondScore1 = 4
let total = firstScore1 + secondScore1
let difference = firstScore1 - secondScore1
let product = firstScore1 * secondScore1
let divided = firstScore1 / secondScore1
let remainder = 13 % secondScore1


let meaningOfLife = 42
let doubleMeaning = 42 + 42
let fakers = "Fakers gonna "
let action = fakers + "fake"
let firstHalf = ["John", "Paul"]
let secondHalf = ["George", "Ringo"]
let beatles = firstHalf + secondHalf

var score = 95
score -= 5
var quote = "The rain in Spain falls mainly on the "
quote += "Spaniards"

let firstScore2 = 6
let secondScore2 = 4
firstScore2 == secondScore2
firstScore2 != secondScore2
firstScore2 < secondScore2
firstScore2 >= secondScore2
"Taylor" <= "Swift"

let firstCard = 11
let secondCard = 10


if firstCard + secondCard == 2 {
    print("Aces – lucky!")
} else if firstCard + secondCard == 21 {
    print("Blackjack!")
} else {
    print("Regular cards")
}

let age1 = 12
let age2 = 21
if age1 > 18 && age2 > 18 {
    print("Both are over 18")
}
if age1 > 18 || age2 > 18 {
    print("At least one is over 18")
}

let firstCard1 = 11
let secondCard1 = 10
print(firstCard == secondCard ? "Cards are the same" : "Cards are different")
if firstCard1 == secondCard1 {
    print("Cards are the same")
} else {
    print("Cards are different")
}

let weather = "sunny"
switch weather {
case "rain":
    print("Bring an umbrella")
case "snow":
    print("Wrap up warm")
case "sunny":
    print("Wear sunscreen")
    fallthrough
default:
    print("Enjoy your day!")
}

let score1 = 85

switch score1 {
case 0..<50:
    print("You failed badly.")
case 50..<85:
    print("You did OK.")
default:
    print("You did great!")
}

