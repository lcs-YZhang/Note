//: [Previous](@previous)
/*:
 
 ### Knowledge check #6
 
 What will happen when the code below is run?
 
 Make a prediction before you actually type and run the code.
 
 ![kc6](kc-six.png)
 
 */
// Type the code below this line...

var x: Int? = 3
var y: Int? = 4

if let notNilx = x, let noNilY = y {
    notNilx * noNilY
} else {
    print("Canno† compute, x, y, or both are nil")
}
/*:
 
 ## Summarize your learning
 
 In your app development journal, write brief responses to the following questions:
 
 1. If you force-unwrap an optional variable that contains a *nil* value, what happens?
 2. What are the benefits of using *optional binding*?
 3. Why do the concepts of optional variables and safely unwrapping these variables exist in Swift?
 
 */
