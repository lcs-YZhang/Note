import Cocoa

//MARK: Writing Func
var str = "Hello, playground"
func printHelp() {
    let message = """
Welcome to MyApp!

Run this app inside a directory of images and
MyApp will resize them all into thumbnails
"""

    print(message)
}
printHelp()

//MARK: Accepting parameters
print("Hello World")
func square1(number: Int) {
    print(number * number)
}
square1(number: 8)

//MARK: Returning Value
func square2(number: Int) -> Int {
    return number * number
}
let result1 = square2(number: 8)
print(result1)

//MARK: Parameter labels
func square3(number: Int) -> Int {
    return number * number
}
let result2 = square3(number: 8)
func sayHello(to name: String) {
    print("Hello, \(name)!")
}
sayHello(to: "Taylor")

//MARK: Omitting parameter labels
func greet1(_ person: String) {
    print("Hello, \(person)!")
}
greet1("Taylor")

//MARK: Default parameters
func greet2(_ person: String, nicely: Bool = true) {
    if nicely == true {
        print("Hello, \(person)!")
    } else {
        print("Oh no, it's \(person) again...")
    }
}
greet2("Taylor")
greet2("Taylor", nicely: false)
