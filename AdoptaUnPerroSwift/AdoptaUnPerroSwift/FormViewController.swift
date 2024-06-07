//
//  FormViewController.swift
//  AdoptaUnPerroSwift
//
//  Created by Administrador on 7/6/24.
//

import UIKit

class FormViewController: UIViewController {
    
    
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var surnameTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var phoneTextField: UITextField!
    @IBOutlet weak var switchField: UISwitch!
    @IBOutlet weak var sendButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func sendButtonTapped(_ sender: UIButton) {
        
        if let name = nameTextField.text, name.isEmpty {
                    showAlert(message: "Please fill in the Name field")
                    return
                }
                
                if let surname = surnameTextField.text, surname.isEmpty {
                    showAlert(message: "Please fill in the Surname field")
                    return
                }
                
                if let email = emailTextField.text, email.isEmpty || !isValidEmail(email) {
                    showAlert(message: "Please enter a valid Email")
                    return
                }
                
                if let phone = phoneTextField.text, phone.isEmpty || !isValidPhone(phone) {
                    showAlert(message: "Please enter a valid Phone number")
                    return
                }
                
                if !switchField.isOn {
                    showAlert(message: "Please accept the Terms and Conditions")
                    return
                }
                
                // Process the form
                print("Form submitted successfully")
                
                // Return to the main view controller
                navigationController?.popToRootViewController(animated: true)
    }
    
    func isValidEmail(_ email: String) -> Bool {
            // Email validation regex
            let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
            let emailPred = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
            return emailPred.evaluate(with: email)
        }
        
        func isValidPhone(_ phone: String) -> Bool {
            // Phone validation regex for Spain
            let phoneRegEx = "^\\d{9}$"
            let phonePred = NSPredicate(format: "SELF MATCHES %@", phoneRegEx)
            return phonePred.evaluate(with: phone)
        }
        
        func showAlert(message: String) {
            let alert = UIAlertController(title: "Error", message: message, preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
            present(alert, animated: true, completion: nil)
        }

}
