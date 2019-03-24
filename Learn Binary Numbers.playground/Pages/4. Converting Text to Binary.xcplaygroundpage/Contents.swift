//: [Previous](@previous)

/*:
 - - -
 ## Conversion text to binary numbers
 
 - callout(Goal):
 Learn about how characters are represented in computers and how we can convert them to binary numbers.
 
 - - -
 
 We learned that computers represent decimal numbers as binary numbers, but what happens when we have characters? How do we represent a character as 0s and 1s when it doesn't have a numerical value. In fact the characters do have a numerical value in an ASCII table. An ASCII table is a mapping for some of the most commonly used letters, symbols, and characters to a integer value that is understood by computers.
 
 Looking at an ascii table, we can see that the character a is represented as 97.
 
 Lower case letters are represented by their own number. Such as:
 a -> 97
 
 b -> 98
 
 Capital letters are also represented with their own unique numbers.
 A -> 65
 
 - Example:
 How is the letter a represented in base 2?
 
 We can examine an ascii table and see the letter a is the number 97. This is in base 10, and we learned in previous lessons how to convert from base 10 to base 2.
 
 After doing the steps to convert a base 10 number to base 2 we get 97 is 1100001 in base 2.
 
 - - -
 
 Try writing your name in the message below and see what your name is in binary.
 
 - - -
 */

var message = /*#-editable-code*/"Jonathan Tsang"/*#-end-editable-code*/

//#-hidden-code

// Page view
import UIKit
import PlaygroundSupport

// Screen
let screenWidth = 700
let screenHeight = 700

// Create labels
let messageLabel = UILabel(frame: CGRect(x: 50, y: 100, width: screenWidth, height: 60))
messageLabel.font = UIFont(name: "KohinoorTelugu-Medium", size: 50)
messageLabel.textColor = UIColor.purple
messageLabel.text = "0"
messageLabel.lineBreakMode = .byWordWrapping
messageLabel.numberOfLines = 0

let convertedLabel = UILabel(frame: CGRect(x: 50, y: 200, width: screenWidth, height: 400))
convertedLabel.font = UIFont(name: "KohinoorTelugu-Medium", size: 30)
convertedLabel.textColor = UIColor.purple
convertedLabel.text = "0"
convertedLabel.lineBreakMode = .byWordWrapping
convertedLabel.numberOfLines = 0

var view = UIView(frame: CGRect(x: 0, y: 0, width: screenWidth, height: screenHeight))
view.backgroundColor = UIColor.white

view.addSubview(messageLabel)
view.addSubview(convertedLabel)

// Converts a number string to a binary string
public func toBinary(num: Int) -> String {
  if (num == 0){
    return "0"
  }
  var ans = ""
  var number = num
  while (number > 0){
    let quotient = number / 2
    let remainder = number % 2
    ans = String(remainder) + ans
    number = quotient
  }
  return ans
}

// Update the number and label when it is changed
public func updateLabels(messageString: String) {
  messageLabel.text = "Message: " + messageString
  
  var convertedString = "Binary:\n"
  let maxlinelen = 5 // How many binary numbers on a line
  var linelen = 0
  // For each charater in messageString, convert to binary
  for index in messageString.indices {
    let ch = String(messageString[index]).unicodeScalars
    let character = Int(ch[ch.startIndex].value)
    if (linelen != 0) {
      convertedString += " " + toBinary(num: character)
    } else {
      convertedString += toBinary(num: character)
    }
    linelen += 1
    if (linelen == maxlinelen){
      convertedString += "\n"
      linelen = 0
    }
  }
  
  convertedLabel.text = convertedString  // Check if done
}

// Draw Labels
updateLabels(messageString: message)

PlaygroundPage.current.liveView = view
//#-end-hidden-code

//: [Next](@next)
