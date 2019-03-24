import Foundation

public class ConversionUtilities {
  
  public init(){
  }
  
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
  
  // Used in page 4 converting an ascii number to binary
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
}
