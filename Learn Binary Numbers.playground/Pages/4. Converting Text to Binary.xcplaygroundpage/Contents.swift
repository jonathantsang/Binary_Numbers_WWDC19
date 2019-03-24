//: [Previous](@previous)

/*:
 - - -
 ## Conversion text to binary numbers
 
 - callout(Goal):
 Learn about how characters are represented in computers and how we can convert them to binary numbers.
 
 - - -
 
 We learned that computers represent decimal numbers as binary numbers, but what happens when we have letters of the alphabet, also known as characters? How do we represent a character as 0s and 1s when it doesn't have a numerical value? In fact the characters do have a numerical value according to something called an ASCII table. An ASCII table is a mapping for some of the most commonly used letters, symbols, and characters to a integer value that is understood by computers.
 
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
 
 - callout(Extension):
 Now that we've solved the problems up to here try out fun mode where we convert the binary values to a custom emoji name for yourself! It may take a little longer to form your emoji name.
 */

var message = /*#-editable-code*/"Jonathan Tsang"/*#-end-editable-code*/

 var funmode = /*#-editable-code*/false/*#-end-editable-code*/

//#-hidden-code

// Page view
import UIKit
import PlaygroundSupport

// Screen
let screenWidth = 700
let screenHeight = 700

// Create labels
let messageLabel = UILabel(frame: CGRect(x: 50, y: 100, width: screenWidth, height: 100))
messageLabel.font = UIFont(name: "KohinoorTelugu-Medium", size: 30)
messageLabel.textColor = UIColor.white
messageLabel.text = "0"
messageLabel.lineBreakMode = .byWordWrapping
messageLabel.numberOfLines = 0

let convertedLabel = UILabel(frame: CGRect(x: 50, y: 200, width: screenWidth, height: 400))
convertedLabel.font = UIFont(name: "KohinoorTelugu-Medium", size: 30)
convertedLabel.textColor = UIColor.white
convertedLabel.text = "0"
convertedLabel.lineBreakMode = .byWordWrapping
convertedLabel.numberOfLines = 0

var view = UIView(frame: CGRect(x: 0, y: 0, width: screenWidth, height: screenHeight))
view.backgroundColor = UIColor.black

view.addSubview(messageLabel)
view.addSubview(convertedLabel)

let cv = ConversionUtilities()
// Update the number and label when it is changed
public func updateLabels(messageString: String) {
  messageLabel.text = "Message:\n" + messageString
  
  var convertedString = "Binary:\n"
  let maxlinelen = 3 // How many binary numbers on a line
  var linelen = 0
  // For each charater in messageString, convert to binary
  for index in messageString.indices {
    let ch = String(messageString[index]).unicodeScalars
    let character = Int(ch[ch.startIndex].value)
    if (linelen != 0) {
      convertedString += " " + cv.toBinary(num: character)
    } else {
      convertedString += cv.toBinary(num: character)
    }
    linelen += 1
    if (linelen == maxlinelen){
      convertedString += "\n"
      linelen = 0
    }
  }
  convertedLabel.text = convertedString  // Check if done
}

public func updateEmojis(msg: String) {
  messageLabel.text = "Message:\n" + msg
  
  let messageString = msg.prefix(8)
  
  // emoji values in the array
  let alien = UIImage(named: "alien.png")
  let astonished = UIImage(named: "astonished.png")
  let eggplant = UIImage(named: "eggplant.png")
  let facestuckout = UIImage(named: "facestuckout.png")
  let fire = UIImage(named: "fire.png")
  let ghost = UIImage(named: "ghost.png")
  let grinning = UIImage(named: "grinning.png")
  let happy = UIImage(named: "happy.png")
  let heart = UIImage(named: "heart.png")
  let hundred = UIImage(named: "hundred.png")
  let lion = UIImage(named: "lion.png")
  let lookoftriumph = UIImage(named: "lookoftriumph.png")
  let melon = UIImage(named: "melon.png")
  let monkey = UIImage(named: "monkey.png")
  let neutral = UIImage(named: "neutral.png")
  let peach = UIImage(named: "peach.png")
  let pizza = UIImage(named: "pizza.png")
  let poop = UIImage(named: "poop.png")
  let rainbow = UIImage(named: "rainbow.png")
  let sleepingface = UIImage(named: "sleepingface.png")
  let sleepy = UIImage(named: "sleepy.png")
  let tearsofjoy = UIImage(named: "tearsofjoy.png")
  let unicorn = UIImage(named: "unicorn.png")
  var emojis: [UIImage] = []
  emojis.append(alien!)
  emojis.append(astonished!)
  emojis.append(eggplant!)
  emojis.append(facestuckout!)
  emojis.append(fire!)
  emojis.append(ghost!)
  emojis.append(grinning!)
  emojis.append(happy!)
  emojis.append(heart!)
  emojis.append(hundred!)
  emojis.append(lion!)
  emojis.append(lookoftriumph!)
  emojis.append(melon!)
  emojis.append(monkey!)
  emojis.append(neutral!)
  emojis.append(peach!)
  emojis.append(pizza!)
  emojis.append(poop!)
  emojis.append(rainbow!)
  emojis.append(sleepingface!)
  emojis.append(sleepy!)
  emojis.append(tearsofjoy!)
  emojis.append(unicorn!)
  
  convertedLabel.text = "Converted Emoji Name:"
  // Draw emojis based on base10number digits
  var convertedString = "Binary:\n"
  let maxlinelen = 4 // How many binary numbers on a line
  var linelen = 0
  var row = 0
  // For each charater in messageString, convert to binary
  for index in messageString.indices {
    let ch = String(messageString[index]).unicodeScalars
    let idx = Int(ch[ch.startIndex].value) % emojis.count
    if (linelen != 0) {
      // Draw with space
      let emoji = UIImageView(image: emojis[idx])
      emoji.frame = CGRect(x: linelen * 60 + 50, y: 450 + row * 60, width: 50, height: 50)
      view.addSubview(emoji)
    } else {
      // Draw on newline
      let emoji = UIImageView(image: emojis[idx])
      emoji.frame = CGRect(x: linelen * 60 + 50, y: 450 + row * 60, width: 50, height: 50)
      view.addSubview(emoji)
    }
    linelen += 1
    if (linelen == maxlinelen){
      convertedString += "\n"
      linelen = 0
      row += 1
    }
  }
}

// Draw emojis
if (funmode) {
  updateEmojis(msg: message)
} else {
  // Draw Labels
  updateLabels(messageString: message)
}

PlaygroundPage.current.liveView = view
//#-end-hidden-code

//: [Next](@next)
