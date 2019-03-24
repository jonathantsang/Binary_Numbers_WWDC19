//: [Previous](@previous)

/*:
 - - -
 ## Conversion from Binary to Decimal
 
 - callout(Goal):
 Learn about the differences between a decimal number and a binary number.
 
 Now that we know how to convert from decimal numbers to binary numbers, how do we do it in the other direction?
 - - -
 
 - Example:
 How is 23 represented in base 2?
 
 In the last example we learned that 23 in base 2 is:
 
 1 * 2^4 + 0 * 2^3 + 1 * 2^2 + 1 * 2^1 + 1 * 2^0 = 23
 
 This can also be represented as 10111.
 
 We know from this binary number it contains 2^4, 2^2, 2^1 and 2^1 based on which digits are 1s and which are 0s.
 
 - - -
 
 Try converting a binary number that you input to base 10 in the code below.
 
 - - -
 */

var base2number = /*#-editable-code*/10/*#-end-editable-code*/

//#-hidden-code

// Page view
import UIKit
import PlaygroundSupport

// Screen
let screenSize = UIScreen.main.bounds
let screenWidth = screenSize.width
let screenHeight = screenSize.height

// Create labels
let numberLabel = UILabel(frame: CGRect(x: screenWidth / 5, y: screenHeight - 500, width: 300, height: 60))
numberLabel.font = UIFont.systemFont(ofSize: 50)
numberLabel.textColor = UIColor.purple
numberLabel.textAlignment = .center
numberLabel.text = "0"
let binaryLabel = UILabel(frame: CGRect(x: screenWidth / 5, y: 100, width: 300, height: 60))
binaryLabel.font = UIFont.systemFont(ofSize: 50)
binaryLabel.textColor = UIColor.purple
binaryLabel.textAlignment = .center
binaryLabel.text = "0"

var view = UIView(frame: CGRect(x: 0.0, y: 0.0, width: screenWidth, height: screenHeight))
view.backgroundColor = UIColor.white

view.addSubview(numberLabel)
view.addSubview(binaryLabel)

// Converts a binary string to a decimal string
public func toDecimal(num: String) -> Int {
  var ans = 0
  var i = NSDecimalNumber(decimal: pow(2, num.count-1)).intValue
  for index in num.indices {
    if (num[index] == "1"){
      ans += i
    }
    i /= 2
  }
  return ans
}

// Update the number and label when it is changed
public func updateLabels(binaryString: Int) {
  let numberString = toDecimal(num: String(binaryString))
  numberLabel.text = "Decimal: " + String(binaryString)
  
  binaryLabel.text = "Binary: " + String(numberString)
  // Check if done
}

// Draw Labels
updateLabels(binaryString: base2number)

PlaygroundPage.current.liveView = view
//#-end-hidden-code

//: [Next](@next)
