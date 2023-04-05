//
//  ViewController.swift
//  AboutMe
//
//  Created by Mark Papush on 4/5/23.
//

import UIKit

class LoginScreenViewController: UIViewController {

    @IBOutlet var usernameTextField: UITextField!
    
    @IBOutlet var passwordTextField: UITextField!
    
    let userdata = LogInData(password: "Biden", username: "Joe", greeting: "👋🏻")
    
    @IBAction func buttonDidPressed(_ sender: UIButton) {
        switch sender.titleLabel?.text {
        case "Log In":
            if (usernameTextField.text == userdata.username && passwordTextField.text == userdata.password) {
                performSegue(withIdentifier: "showGreeting", sender: nil)
                } else {
                createAnAllert(with: "Invalid Login Data", and: "Please enter valid data")
                passwordTextField.text = ""
            }
        case "Forgot username? ":
            createAnAllert(with: "Username", and: "Username is 'Joe'")
        default:
            createAnAllert(with: "Password", and: "Password is 'Biden'")
        }
    }
    
    func createAnAllert(with title: String, and message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Allright!", style: .default))
        present(alert, animated: true)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let greetingVC = segue.destination as? GreetingViewController else { return }
        greetingVC.name = userdata.username
        greetingVC.emoji = userdata.greeting
    }

}

