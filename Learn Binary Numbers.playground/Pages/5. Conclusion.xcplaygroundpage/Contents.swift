//: [Previous](@previous)

/*:
 - - -
 ## Conclusion
 
 What did we learn in these short lessons?
 
 - What a base 10 and base 2 number is, and the differences between them
 - How to convert to base 2 from base 10 and vice versa
 - Learned about characters and their ASCII number representation
 
 Learning Beyond
 
 - Even more number systems beyeond base 2 and base 10, with base 6 known as hexadecimal, base 8 octets, and even bases larger than 10
 - Learn about bit operators in binary numbers how you can change a number based on which 0s and 1s it possesses
 
*/

//#-hidden-code

// Page view
import UIKit
import PlaygroundSupport

// Screen
let screenSize = UIScreen.main.bounds
let screenWidth = screenSize.width
let screenHeight = screenSize.height

// Create labels
let numberLabel = UILabel(frame: CGRect(x: 50, y: screenHeight - 800, width: 300, height: 60))
numberLabel.font = UIFont.systemFont(ofSize: 50)
numberLabel.textColor = UIColor.purple
numberLabel.textAlignment = .center
numberLabel.text = "0"
let binaryLabel = UILabel(frame: CGRect(x: 50, y: screenHeight - 700, width: 300, height: 60))
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
  var number = Int(num)!
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
  numberLabel.text = "Decimal: " + String(numberString)
  
  let binaryString = toBinary(num: String(numberString))
  binaryLabel.text = "Binary: " + binaryString
  // Check if done
}

// Draw Labels
// updateLabels(numberString: base10number)

PlaygroundPage.current.liveView = view
//#-end-hidden-code

//: [Next](@next)
