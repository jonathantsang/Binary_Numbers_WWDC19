import UIKit

public class ConversionUIController: UIViewController {
  @IBOutlet var numberLabel: UILabel!
  @IBOutlet var binaryLabel: UILabel!
    
  public enum CompletionStatus {
    case fail
    case success
  }
  
  public var currentStatus: CompletionStatus = .fail

  
  override public func viewDidLoad() {
    super.viewDidLoad()
    numberLabel.alpha = 0.0
    binaryLabel.alpha = 0.0
    numberLabel.text = ""
    binaryLabel.text = ""
  }
  
  public func toBinary(num: String, len: Int) -> String {
    var padded = num
    for _ in 0..<(len - num.count) {
      padded = "0" + padded
    }
    return padded
  }
  
  // Update the number and label when it is changed
  public func updateLabels(numberString: Int) {
    numberLabel.text = String(numberString)
    
    let binaryString = toBinary(num: String(numberString), len: 5)
    
    binaryLabel.text = binaryString
    
    if let message = numberLabel.text {
      if message != "" {
        currentStatus = .success
      }
    }
  }
}
