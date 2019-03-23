/*:
 - - -
 ## What is a binary number?
 
 - callout(Goal):
 Learn about the differences between a decimal number and a binary number.
 
 ## Base 10
 
 When people think about numbers they usually think of 0, 1, 2, 3, 4, 5, 6, 7, 8, 9 and beyond. But how does a computer interpret numbers in the programs and code that has been written. In many cases a computer executes code only filled with 0s and 1s. This is problematic for people who want to represent numbers larger than 0 and 1. Luckily there is a way to represent any number we want with 0s and 1s. Our usual number system also known as the decimal system from 0-9 digits is called base 10, where 10 denotes an extra grouping for the next level.
 
 - - -
 - Example:
 How is 23 represented in base 10?
 
 2 * 10 + 3 * 10 = 23
 
 Where 23 contains two tens and three ones to form 23.
 
 We can also represent 23 using powers of 10.
 
 2 * 10^1 + 3 * 10^0 = 23
 
 We notice here that the ones digit 3 is multiplied by 10^0 and the tens digit 2 is multiplied by 10^1, and each increasing column in the number would be multiplied by 10 to an increasing exponent.
 
 - - -
 
 > Try representing your age as a base 10 number and see the different components that make up your age.
 
 This section will teach you about the binary numbers and how a base 10 number can be converted to a base 2 number also known as a binary number.
 
 ## Base 2
 
 A number represented in base 2 has only the digits 0 and 1 to represent numbers, and every 2 represents another grouping. If that doesn't immediately make sense let's try an example.
 
 - - -
 - Example:
 How is 2 represented in base 2?
 
 2 * 1 = 2
 
 Where 2 contains two ones.
 
 We can also represent 2 using powers of 2.
 
 2 * 2^0 = 2
 
 Similarly from the base 10 example, we use building blocks of powers of the base number to form our numbers. Instead of powers of 10, here numbers are constructed with powers of 2. We notice that each number can be represented as 0s and 1s in base 2.
 
 These numbers are converted to 0 and 1s.
 
 0 is 0.
 
 1 is 1.
 
 2 is 10.
 
 3 is 11.
 
 4 is 100.
 
 5 is 101.
 
 and so on.
 
 - - -
 
 Let's see how we can convert a decimal number to binary.
 
 * callout(Steps):
 The binary conversion process is like this:
 
 1. Divide the number by 2.
 1. This gives a quotient and a remainder.
 1. Save the remainder portion and continue dividing the quotient by 2 until it is 0.
 
 - - -
 - Example:
  How do we convert 23 to binary?
 
  We start with 23 / 2 = 11 with a remainder of 1.
 
  11 / 2 = 5 with a remainder of 1.
 
  5 / 2 = 2 with a remainder of 1.
 
  2 / 2 = 1 with a remainder of 0.
 
  1 / 2 = 0 with a remainder of 1.
 
  Then we end since we reached 0.
 
  At this point you can see that the remainders are 111010. We reverse this to get 010111 to get 23 in binary.
  Let's verify that this is correct:
 
  1 * 2^4 + 0 * 2^3 + 1 * 2^2 + 1 * 2^1 + 1 * 2^0 = 23
 
  16 + 0 + 4 + 2 +  1  = 23

 This is correct! Now try out converting a decimal number to binary in the code snippet below!
 
 - - -
 
 Try converting a number that you input to binary in the code below.
 - - -
 */

var base10number = /*#-editable-code*/4/*#-end-editable-code*/

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
updateLabels(numberString: base10number)

PlaygroundPage.current.liveView = view
//#-end-hidden-code

