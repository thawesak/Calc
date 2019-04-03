import UIKit

class ViewController: UIViewController {

  @IBOutlet weak var leftOperandTextField: UITextField!
  @IBOutlet weak var rightOperandTextField: UITextField!
  @IBOutlet weak var resultTextField: UITextField!
  @IBOutlet weak var executeButton: UIButton!
  var selectedOperator: String = "+"

  override func viewDidLoad() {
    super.viewDidLoad()

  }

  @IBAction func selectedAdd(_ sender: Any) {
    selectedOperator = "+"
  }

  @IBAction func selectedMinus(_ sender: Any) {
    selectedOperator = "-"
  }

  @IBAction func selectedMultiply(_ sender: Any) {
    selectedOperator = "*"
  }

  @IBAction func selectedDivide(_ sender: Any) {
    selectedOperator = "/"
  }

  @IBAction func calculate(_ sender: Any) {
    
    switch selectedOperator {
      case "+":
        resultTextField.text = String(Double(leftOperandTextField.text!)! + Double(rightOperandTextField.text!)!)
      case "-":
        resultTextField.text = String(Double(leftOperandTextField.text!)! - Double(rightOperandTextField.text!)!)
      case "*":
        resultTextField.text = String(Double(leftOperandTextField.text!)! * Double(rightOperandTextField.text!)!)
      case "/":
        resultTextField.text = String(Double(leftOperandTextField.text!)! / Double(rightOperandTextField.text!)!)
      default:
        resultTextField.text = String(Double(leftOperandTextField.text!)! + Double(rightOperandTextField.text!)!)
    }
  }

}
