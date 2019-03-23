
 // [Previous](@previous) | [Next](@next)

/*:
 - - -
 ## What is a binary number?
 
 * callout(Goal):
 Learn how to convert a number to binary [cipher](glossary://binary).
 
 When people think about numbers they usually think of 0, 1, 2, 3, 4, and beyond. As th
 
 This section will teach you about the binary numbers and how a base 10 number can be converted to a base 2 number also known as a binary number.
 
 * callout(Process):
 The binary conversion process is like this:
 
 Divide the number by 2. This gives a quotient and a remainder.
 
 These numbers are converted to 0 and 1s.
 
 0 is 0.
 
 1 is 1.
 
 2 is 10.
 
 3 is 11.
 
 4 is 100.
 
 Try converting a number that you input to binary
 - - -
 */

var number = 0
var numbertoconvert = /*#-editable-code*/40/*#-end-editable-code*/

//#-hidden-code

// Page view
import UIKit
import PlaygroundSupport

// Screen
let screenSize = UIScreen.main.bounds
let screenWidth = screenSize.width
let screenHeight = screenSize.height

// Create labels
let numberLabel = UILabel(frame: CGRect(x: screenWidth / 2, y: 100, width: 300, height: 50))
numberLabel.font = UIFont.systemFont(ofSize: 50)
numberLabel.textColor = UIColor.purple
numberLabel.textAlignment = .center
numberLabel.text = "0"
let binaryLabel = UILabel(frame: CGRect(x: screenWidth / 2, y: screenHeight - 500, width: 300, height: 50))
binaryLabel.font = UIFont.systemFont(ofSize: 50)
binaryLabel.textColor = UIColor.purple
binaryLabel.textAlignment = .center
binaryLabel.text = "0"

var view = UIView(frame: CGRect(x: 0.0, y: 0.0, width: screenWidth, height: screenHeight))
view.backgroundColor = UIColor.white

view.addSubview(numberLabel)
view.addSubview(binaryLabel)

// Converts a number string to a binary string
public func toBinary(num: String) -> String {
  if (num == "0"){
    return "0"
  }
  var ans = ""
  number = Int(num)!
  while (number > 0){
    let quotient = number / 2
    let remainder = number % 2
    ans = String(remainder) + ans
    number = quotient
  }
  return ans
}

// Update the number and label when it is changed
public func updateLabels(numberString: Int) {
  numberLabel.text = String(numberString)
  
  let binaryString = toBinary(num: String(numberString))
  binaryLabel.text = binaryString
  // Check if done
}

// Draw Labels
updateLabels(numberString: numbertoconvert)

PlaygroundPage.current.liveView = view
//#-end-hidden-code


// [Previous](@previous) | [Next](@next)


