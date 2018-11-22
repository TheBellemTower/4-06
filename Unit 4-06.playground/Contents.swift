// Created on: Nov 2018
// Created by: Ethan Bellem 
// Created for: ICS3U
// This program calculates volume
// this will be commented out when code moved to Xcode
import PlaygroundSupport


import UIKit

class ViewController : UIViewController {
    // this is the main view controller, that will show the UIKit elements
    
    // properties
    let instructionLabel = UILabel()
    let radiusTextField = UITextField()
    let heightTextField = UITextField()
    let calculateButton = UIButton()
    let answerLabel = UILabel()
    
    
    
    @objc func showWords() {
        // make variables for the strings
        if let stringOne : String = String(radiusTextField.text!),  let stringTwo : String = String(heightTextField.text!) {
            // ask other function if the words are the same or not
            if checkWords(stringOneSent: stringOne, stringTwoSent: stringTwo) == true {
                answerLabel.text = "They are the same."
            } else {
                answerLabel.text = "They are different."
            }
        }
    }
    
    @objc func checkWords(stringOneSent : String, stringTwoSent: String) -> Bool{
        // check if the strings are the same
        if stringOneSent.uppercased() == stringTwoSent.uppercased() {
            return true
        } else {
            return false
        }
    }
    
    
    override func viewDidLoad() {
        // UI
        super.viewDidLoad()
        
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        self.view = view
        
        let radiusSent = radiusTextField.text
        let heightSent = heightTextField.text
        
        instructionLabel.text = "Enter two words and computer will tell you if they are the same"
        view.addSubview(instructionLabel)
        instructionLabel.translatesAutoresizingMaskIntoConstraints = false
        instructionLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 20).isActive = true
        instructionLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        
        radiusTextField.borderStyle = UITextField.BorderStyle.roundedRect
        radiusTextField.placeholder = "word 1"
        view.addSubview(radiusTextField)
        radiusTextField.translatesAutoresizingMaskIntoConstraints = false
        radiusTextField.topAnchor.constraint(equalTo: instructionLabel.bottomAnchor, constant: 20).isActive = true
        radiusTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        
        
        heightTextField.borderStyle = UITextField.BorderStyle.roundedRect
        heightTextField.placeholder = "word 2"
        view.addSubview(heightTextField)
        heightTextField.translatesAutoresizingMaskIntoConstraints = false
        heightTextField.topAnchor.constraint(equalTo: radiusTextField.bottomAnchor, constant: 20).isActive = true
        heightTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        
        calculateButton.setTitle("Check", for: .normal)
        calculateButton.setTitleColor(.blue, for: .normal)
        calculateButton.titleLabel?.textAlignment = .center
        calculateButton.addTarget(self, action: #selector(showWords), for: .touchUpInside)
        view.addSubview(calculateButton)
        calculateButton.translatesAutoresizingMaskIntoConstraints = false
        calculateButton.topAnchor.constraint(equalTo: heightTextField.bottomAnchor, constant: 20).isActive = true
        calculateButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        
        answerLabel.text = nil
        view.addSubview(answerLabel)
        answerLabel.translatesAutoresizingMaskIntoConstraints = false
        answerLabel.topAnchor.constraint(equalTo: calculateButton.bottomAnchor, constant: 20).isActive = true
        answerLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
    }
    
    override var prefersStatusBarHidden: Bool {
        return true
    }
}

// this will be commented out when code moved to Xcode
PlaygroundPage.current.liveView = ViewController()
